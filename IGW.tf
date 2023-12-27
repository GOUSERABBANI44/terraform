#Creating IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mvpc.id
  tags = {

    Name = "my-igw"
  }
}

   #(oR)

#Creating IGW
resource "aws_internet_gateway" "igw" {
  tags = {

    Name = "my-igw"
  }
}
#Attaching the internet_gateway to vpc
resource "aws_vpc_gateway_attachment" "attach" {
  vpc_id = aws_vpc.mvpc.id
  gateway_id = aws_internet_gateway.igw.id
}
  
