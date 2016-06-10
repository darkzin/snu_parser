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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t5       <char> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v2       <char> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t0 >= 43861 goto 1_if_true
    movl    $43861, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    leal    _str_1, %eax            #   4:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    movl    $4891, %eax             #   7:     if     4891 = 4621 goto 6
    movl    $4621, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_6                 
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $1, %eax                #  10:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $0, %eax                #  13:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_f0_8:
    movzbl  -21(%ebp), %eax         #  15:     assign v1 <- t2
    movb    %al, -25(%ebp)         
    movl    $89721, %eax            #  16:     if     89721 < 11393 goto 11_if_true
    movl    $11393, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  17:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  19:     goto   10
l_f0_12_if_false:
l_f0_10:
    call    dummyBOOLfunc           #  22:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f0_0                  #  23:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_16_while_cond:
    movl    $100, %eax              #  27:     if     100 <= 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_17_while_body     
    jmp     l_f0_15                 #  28:     goto   15
l_f0_17_while_body:
    movl    $63495, %eax            #  30:     if     63495 < 49284 goto 20
    movl    $49284, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_20                
    jmp     l_f0_21                 #  31:     goto   21
l_f0_20:
    movl    $1, %eax                #  33:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_22                 #  34:     goto   22
l_f0_21:
    movl    $0, %eax                #  36:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_f0_22:
    movzbl  -23(%ebp), %eax         #  38:     assign v1 <- t4
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #  39:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_16_while_cond      #  40:     goto   16_while_cond
l_f0_15:
    call    dummyCHARfunc           #  42:     call   t5 <- dummyCHARfunc
    movb    %al, -24(%ebp)         
    movzbl  -24(%ebp), %eax         #  43:     assign v2 <- t5
    movb    %al, -26(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 72 of <array 97 of <array 59 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 55 of <array 100 of <array 33 of <array 71 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 38 of <array 26 of <array 96 of <array 97 of <array 26 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $14947, %eax            #   0:     add    t0 <- 14947, 1365
    movl    $1365, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 53853
    movl    $53853, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 3927
    movl    $3927, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_2                  #   5:     goto   2
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_4                  #   9:     goto   4
l_f1_3:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_f1_4:
    movzbl  -25(%ebp), %eax         #  13:     return t3
    jmp     l_f1_exit              
    movl    $99, %eax               #  14:     assign v1 <- 99
    movb    %al, 8(%ebp)           

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 38 of <array 26 of <array 96 of <array 97 of <array 26 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 55 of <array 100 of <array 33 of <array 71 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 72 of <array 97 of <array 59 of <array 4 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #   -3296504(%ebp)  3296472  [ $v1       <array 2 of <array 72 of <array 97 of <array 59 of <array 4 of <char>>>>>> %ebp-3296504 ]
    #   -261026528(%ebp)  257730024  [ $v2       <array 5 of <array 55 of <array 100 of <array 33 of <array 71 of <int>>>>>> %ebp-261026528 ]
    #   -500233208(%ebp)  239206680  [ $v3       <array 38 of <array 26 of <array 96 of <array 97 of <array 26 of <bool>>>>>> %ebp-500233208 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $500233196, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $125058299, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3296504(%ebp)       # local array 'v1': 5 dimensions
    movl    $2,-3296500(%ebp)       #   dimension 1: 2 elements
    movl    $72,-3296496(%ebp)      #   dimension 2: 72 elements
    movl    $97,-3296492(%ebp)      #   dimension 3: 97 elements
    movl    $59,-3296488(%ebp)      #   dimension 4: 59 elements
    movl    $4,-3296484(%ebp)       #   dimension 5: 4 elements
    movl    $5,-261026528(%ebp)     # local array 'v2': 5 dimensions
    movl    $5,-261026524(%ebp)     #   dimension 1: 5 elements
    movl    $55,-261026520(%ebp)    #   dimension 2: 55 elements
    movl    $100,-261026516(%ebp)   #   dimension 3: 100 elements
    movl    $33,-261026512(%ebp)    #   dimension 4: 33 elements
    movl    $71,-261026508(%ebp)    #   dimension 5: 71 elements
    movl    $5,-500233208(%ebp)     # local array 'v3': 5 dimensions
    movl    $38,-500233204(%ebp)    #   dimension 1: 38 elements
    movl    $26,-500233200(%ebp)    #   dimension 2: 26 elements
    movl    $96,-500233196(%ebp)    #   dimension 3: 96 elements
    movl    $97,-500233192(%ebp)    #   dimension 4: 97 elements
    movl    $26,-500233188(%ebp)    #   dimension 5: 26 elements

    # function body
    leal    -500233208(%ebp), %eax  #   0:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t0
    pushl   %eax                   
    leal    -261026528(%ebp), %eax  #   2:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t1
    pushl   %eax                   
    leal    -3296504(%ebp), %eax    #   4:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    call    f0                      #   6:     call   t3 <- f0
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   8:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    call    dummyINTfunc            #   9:     call   t5 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
l_f2_3_while_cond:
    movl    $18901, %eax            #  11:     if     18901 <= 16223 goto 4_while_body
    movl    $16223, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_4_while_body      
    jmp     l_f2_2                  #  12:     goto   2
l_f2_4_while_body:
    jmp     l_f2_exit              
    movl    $100, %eax              #  15:     if     100 >= 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  16:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_11                 #  18:     goto   11
l_f2_11:
    jmp     l_f2_7                  #  20:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_3_while_cond       #  23:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $500233196, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    movl    $24401, %eax            #   1:     assign v0 <- 24401
    movl    %eax, v0               
    jmp     l_test_exit            
    call    WriteLn                 #   3:     call   WriteLn
    movl    $99947, %eax            #   4:     if     99947 > 8286 goto 5_if_true
    movl    $8286, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_test_exit            
    jmp     l_test_4                #   9:     goto   4
l_test_6_if_false:
l_test_4:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
