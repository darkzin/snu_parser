##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <bool> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $99771, %eax            #   0:     if     99771 <= 51442 goto 1_if_true
    movl    $51442, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $97, %eax               #   3:     if     97 >= 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_5                 
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t1
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_11_while_cond:
    movl    $100, %eax              #  14:     if     100 > 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  15:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  17:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_0                  #  19:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $100, %eax              #  22:     return 100
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  23:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  24:     if     t3 > 99 goto 16
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_16                
    jmp     l_f0_17                 #  25:     goto   17
l_f0_16:
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_18                 #  28:     goto   18
l_f0_17:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f0_18:
    movzbl  -16(%ebp), %eax         #  32:     assign v0 <- t4
    movb    %al, -17(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 3 of <array 7 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     return t1
    jmp     l_f1_exit              
    movl    $100, %eax              #   9:     if     100 >= 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
l_f1_13_while_cond:
    jmp     l_f1_12                 #  13:     goto   12
    jmp     l_f1_13_while_cond      #  14:     goto   13_while_cond
l_f1_12:
l_f1_16_while_cond:
    movl    $0, %eax                #  17:     if     0 = 0 goto 17_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_17_while_body     
    jmp     l_f1_15                 #  18:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  20:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_8                  #  22:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    dummyCHARfunc           #  25:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    f0                      #  26:     call   t3 <- f0
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #  27:     if     t2 > t3 goto 20
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_20                
    jmp     l_f1_21                 #  28:     goto   21
l_f1_20:
    movl    $1, %eax                #  30:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_22                 #  31:     goto   22
l_f1_21:
    movl    $0, %eax                #  33:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f1_22:
    movzbl  -16(%ebp), %eax         #  35:     return t4
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 10 of <array 1 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $100, %eax              #   0:     assign v2 <- 100
    movb    %al, -14(%ebp)         
    call    f0                      #   1:     call   t1 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v2 <- t1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3_if_true          #   3:     goto   3_if_true
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   7:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, v0                
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
