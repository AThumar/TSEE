<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pricing.aspx.cs" Inherits="TSEE.pricing" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pricing</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        /* Simple Hover Effect */
        .plan-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
        }

        /* Header Styling */
        .pricing-header {
            font-size: 2.5rem;
            font-weight: 600;
            color: #333;
            text-align: center;
            margin-bottom: 40px;
        }

        /* Plan Card Styling */
        .plan-card {
            border-radius: 10px;
            padding: 30px;
            background-color: white;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
        }

        .plan-price {
            font-size: 2rem;
            font-weight: bold;
            color: #4CAF50;
            margin: 20px 0;
        }

        .plan-feature {
            margin-bottom: 10px;
            font-size: 1rem;
            color: #666;
        }

        .plan-button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 28px;
            border-radius: 30px;
            font-size: 1rem;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        .plan-button:hover {
            background-color: #388E3C;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .grid-cols-3 {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body class="bg-gray-50">

    <div class="container mx-auto px-4 py-12">
        <h1 class="pricing-header">Choose Your Plan</h1>
        
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
            <!-- Basic Plan -->
            <div class="plan-card">
                <h2 class="text-2xl font-semibold text-gray-800 mb-4">Basic Plan</h2>
                <p class="plan-price">$19.99/month</p>
                <ul class="text-left mb-6">
                    <li class="plan-feature">10GB Storage</li>
                    <li class="plan-feature">50GB Bandwidth</li>
                    <li class="plan-feature">Email Support</li>
                </ul>
                <button class="plan-button">Choose Plan</button>
            </div>

            <!-- Pro Plan -->
            <div class="plan-card bg-white">
                <h2 class="text-2xl font-semibold text-gray-800 mb-4">Pro Plan</h2>
                <p class="plan-price">$49.99/month</p>
                <ul class="text-left mb-6">
                    <li class="plan-feature">50GB Storage</li>
                    <li class="plan-feature">200GB Bandwidth</li>
                    <li class="plan-feature">Priority Support</li>
                </ul>
                <button class="plan-button">Choose Plan</button>
            </div>

            <!-- Enterprise Plan -->
            <div class="plan-card">
                <h2 class="text-2xl font-semibold text-gray-800 mb-4">Enterprise Plan</h2>
                <p class="plan-price">$99.99/month</p>
                <ul class="text-left mb-6">
                    <li class="plan-feature">Unlimited Storage</li>
                    <li class="plan-feature">Unlimited Bandwidth</li>
                    <li class="plan-feature">24/7 Priority Support</li>
                </ul>
                <button class="plan-button">Choose Plan</button>
            </div>
        </div>
    </div>

</body>
</html>
