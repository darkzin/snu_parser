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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 22 of <array 41 of <array 24 of <array 87 of <array 71 of <int>>>>>>> %ebp+8 ]
    #    -26(%ebp)   1  [ $v1       <bool> %ebp-26 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $25349, %eax            #   1:     mul    t2 <- 25349, 7932
    movl    $7932, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $49871, %eax            #   2:     mul    t3 <- 49871, 67326
    movl    $67326, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t2 >= t3 goto 2_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $49952, %eax            #   9:     if     49952 = 7867 goto 9
    movl    $7867, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #  10:     goto   10
l_f0_9:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_11                 #  13:     goto   11
l_f0_10:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_11:
    movzbl  -25(%ebp), %eax         #  17:     assign v1 <- t4
    movb    %al, -26(%ebp)         
    jmp     l_f0_exit              
    movl    $0, %eax                #  19:     assign v1 <- 0
    movb    %al, -26(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  21:     goto   5
l_f0_5:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 98 of <array 13 of <array 62 of <array 12 of <array 39 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t1
    movb    %al, -15(%ebp)         
    movl    $58720, %eax            #   2:     if     58720 # 76654 goto 2_if_true
    movl    $76654, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_exit              
    movl    $98, %eax               #   6:     if     98 < 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   7:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $52538, %eax            #  12:     if     52538 > 91920 goto 11_if_true
    movl    $91920, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  13:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $26197, %eax            #  18:     if     26197 # 16113 goto 15_if_true
    movl    $16113, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  19:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  21:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_1                  #  24:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  27:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  28:     assign v2 <- t2
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 98 of <array 13 of <array 62 of <array 12 of <array 39 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <char> %ebp-19 ]
    #   -147865580(%ebp)  147865560  [ $v0       <array 98 of <array 13 of <array 62 of <array 12 of <array 39 of <int>>>>>> %ebp-147865580 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $147865568, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36966392, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-147865580(%ebp)     # local array 'v0': 5 dimensions
    movl    $98,-147865576(%ebp)    #   dimension 1: 98 elements
    movl    $13,-147865572(%ebp)    #   dimension 2: 13 elements
    movl    $62,-147865568(%ebp)    #   dimension 3: 62 elements
    movl    $12,-147865564(%ebp)    #   dimension 4: 12 elements
    movl    $39,-147865560(%ebp)    #   dimension 5: 39 elements

    # function body
    movl    $100, %eax              #   0:     if     100 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $99, %eax               #   4:     if     99 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_8                  #   9:     goto   8
l_f2_8:
    movl    $1, %eax                #  11:     param  1 <- 1
    pushl   %eax                   
    leal    -147865580(%ebp), %eax  #  12:     &()    t1 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  14:     call   f1
    addl    $8, %esp               
    jmp     l_f2_0                  #  15:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_13_while_cond:
    jmp     l_f2_17                 #  19:     goto   17
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_18                 #  21:     goto   18
l_f2_17:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_18:
    movzbl  -17(%ebp), %eax         #  25:     if     t2 # 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14_while_body     
    jmp     l_f2_12                 #  26:     goto   12
l_f2_14_while_body:
    call    dummyCHARfunc           #  28:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
l_f2_23_while_cond:
    jmp     l_f2_22                 #  30:     goto   22
    jmp     l_f2_23_while_cond      #  31:     goto   23_while_cond
l_f2_22:
    jmp     l_f2_13_while_cond      #  33:     goto   13_while_cond
l_f2_12:
    call    dummyCHARfunc           #  35:     call   t4 <- dummyCHARfunc
    movb    %al, -19(%ebp)         

l_f2_exit:
    # epilogue
    addl    $147865568, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 22 of <array 41 of <array 24 of <array 87 of <array 71 of <int>>>>>>> %ebp-16 ]

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
    movl    $98, %eax               #   1:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    leal    v0, %eax                #   3:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #   5:     call   f0
    addl    $4, %esp               
    movl    $99, %eax               #   6:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               

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
v0:                                 # <array 22 of <array 41 of <array 24 of <array 87 of <array 71 of <int>>>>>>
    .long    5
    .long   22
    .long   41
    .long   24
    .long   87
    .long   71
    .skip 534878784








    # end of global data section
    #-----------------------------------------

    .end
##################################################
