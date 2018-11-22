require 'sciruby'

class LinearRegressionGradientDescent

    @@theta_class

    def fit(x,y,alpha,num_iter)
        theta_start = N.zeros([x.cols,1])
        theta_end = gradient_descent(x,y,theta_start,alpha,num_iter)
        @@theta_class = theta_end
    end

    def pred(y_pred)
        theta = @@theta_class
        sum = 0
        size = theta.cols 
        if(y_pred.class == NMatrix)
            for i in 0..size
                if(i==0)
                    sum += theta[i,0]
                else
                    sum += theta[i,0]*y_pred[i-1,0]
                end
            end
        elsif(y_pred.class == Float)
            sum += theta[1,0]*y_pred + theta[0,0]
        else
            pp 'Please use an integer,float or NMatrix value'
        end
        return sum
    end


    private 

    def cost_function(x,y,theta)
        m = y.rows
        predictions = x.dot(theta)
        errors = (predictions - y)
        j = (errors*errors).sum[0,0]*1/(2*m)
        return j
    end

    def gradient_descent(x,y,theta,alpha,num_iter)
        m = y.rows
        j_history = N.zeros([num_iter,1])
        for i in 0..num_iter-1
            hypothesis = x.dot(theta)
            errors_vector = ((hypothesis - y).transpose).dot(x)
            mul = (alpha)*(1.0/m)
            gradient = (errors_vector.transpose)*(alpha)*(1.0/m)
            theta = theta-gradient
            j_history[i,0] = cost_function(x,y,theta)
        end
        return theta
    end
end 
