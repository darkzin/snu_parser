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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 71 of <array 60 of <array 40 of <array 28 of <array 78 of <bool>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t1
    jmp     l_f0_exit              
    movl    $100, %eax              #   2:     assign v2 <- 100
    movb    %al, -29(%ebp)         
    call    dummyINTfunc            #   3:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t3 <- t2, 87978
    movl    $87978, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t4 <- t3, 94211
    movl    $94211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t4
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t1
    movb    %al, 8(%ebp)           
    movl    $92064, %eax            #   2:     mul    t2 <- 92064, 62826
    movl    $62826, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $72191, %eax            #   3:     if     72191 = t2 goto 2_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   7:     goto   6_while_cond
    movl    $31371, %eax            #   8:     assign v2 <- 31371
    movl    %eax, -28(%ebp)        
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  13:     if     t3 < 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_10                
    jmp     l_f1_11                 #  14:     goto   11
l_f1_10:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_12                 #  17:     goto   12
l_f1_11:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_f1_12:
    movzbl  -22(%ebp), %eax         #  21:     return t4
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 71 of <array 60 of <array 40 of <array 28 of <array 78 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 33 of <array 9 of <array 29 of <array 25 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 71 of <array 11 of <array 13 of <array 41 of <array 59 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 39 of <array 63 of <array 32 of <array 30 of <array 73 of <bool>>>>>>> %ebp+20 ]
    #   -372153648(%ebp)  372153624  [ $v5       <array 71 of <array 60 of <array 40 of <array 28 of <array 78 of <bool>>>>>> %ebp-372153648 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $372153636, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $93038409, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-372153648(%ebp)     # local array 'v5': 5 dimensions
    movl    $71,-372153644(%ebp)    #   dimension 1: 71 elements
    movl    $60,-372153640(%ebp)    #   dimension 2: 60 elements
    movl    $40,-372153636(%ebp)    #   dimension 3: 40 elements
    movl    $28,-372153632(%ebp)    #   dimension 4: 28 elements
    movl    $78,-372153628(%ebp)    #   dimension 5: 78 elements

    # function body
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    leal    -372153648(%ebp), %eax  #   7:     &()    t2 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   9:     call   t3 <- f0
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
l_f2_6_while_cond:
    movl    $98, %eax               #  11:     if     98 = 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  12:     goto   5
l_f2_7_while_body:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  15:     goto   9
    jmp     l_f2_10_while_cond      #  16:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_6_while_cond       #  18:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $372153636, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $74835, %eax            #   0:     assign v0 <- 74835
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $0, %eax                #   2:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_test_9                #   6:     goto   9
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #   8:     goto   10
l_test_9:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  12:     assign v1 <- t0
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
