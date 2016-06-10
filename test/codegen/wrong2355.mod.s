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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 40 of <array 73 of <array 61 of <array 89 of <array 95 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 74 of <array 38 of <array 87 of <array 41 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    jmp     l_f0_1                  #   0:     goto   1
l_f0_1:
    movl    $1, %eax                #   2:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f0_3:
    movzbl  -18(%ebp), %eax         #   6:     assign v2 <- t8
    movb    %al, 16(%ebp)          
    movl    $55528, %eax            #   7:     sub    t9 <- 55528, 73285
    movl    $73285, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     add    t10 <- t9, 83262
    movl    $83262, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     assign v4 <- t10
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  10:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     return t11
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    movl    $0, %eax                #   1:     if     0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $40997, %eax            #   4:     assign v1 <- 40997
    movl    %eax, -24(%ebp)        
    leal    _str_1, %eax            #   5:     &()    t8 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    movl    $26000, %eax            #  10:     assign v1 <- 26000
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  11:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 40 of <array 73 of <array 61 of <array 89 of <array 95 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t8       <bool> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <ptr(4) to <array 37 of <array 74 of <array 38 of <array 87 of <array 41 of <char>>>>>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 88 of <array 39 of <array 18 of <array 97 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 34 of <array 33 of <array 49 of <array 24 of <array 100 of <char>>>>>>> %ebp+16 ]
    #   -1506004648(%ebp)  1506004624  [ $v3       <array 40 of <array 73 of <array 61 of <array 89 of <array 95 of <bool>>>>>> %ebp-1506004648 ]
    #   -1877129620(%ebp)  371124972  [ $v4       <array 37 of <array 74 of <array 38 of <array 87 of <array 41 of <char>>>>>> %ebp-1877129620 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1877129608, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $469282402, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1506004648(%ebp)    # local array 'v3': 5 dimensions
    movl    $40,-1506004644(%ebp)   #   dimension 1: 40 elements
    movl    $73,-1506004640(%ebp)   #   dimension 2: 73 elements
    movl    $61,-1506004636(%ebp)   #   dimension 3: 61 elements
    movl    $89,-1506004632(%ebp)   #   dimension 4: 89 elements
    movl    $95,-1506004628(%ebp)   #   dimension 5: 95 elements
    movl    $5,-1877129620(%ebp)    # local array 'v4': 5 dimensions
    movl    $37,-1877129616(%ebp)   #   dimension 1: 37 elements
    movl    $74,-1877129612(%ebp)   #   dimension 2: 74 elements
    movl    $38,-1877129608(%ebp)   #   dimension 3: 38 elements
    movl    $87,-1877129604(%ebp)   #   dimension 4: 87 elements
    movl    $41,-1877129600(%ebp)   #   dimension 5: 41 elements

    # function body
    movl    $100, %eax              #   0:     param  3 <- 100
    pushl   %eax                   
    movl    $97, %eax               #   1:     if     97 <= 97 goto 4
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_4                 
    jmp     l_f2_5                  #   2:     goto   5
l_f2_4:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -20(%ebp)         
l_f2_6:
    movzbl  -20(%ebp), %eax         #   9:     param  2 <- t8
    pushl   %eax                   
    leal    -1877129620(%ebp), %eax #  10:     &()    t9 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  1 <- t9
    pushl   %eax                   
    leal    -1506004648(%ebp), %eax #  12:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  14:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  15:     if     t11 <= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #  16:     goto   2_if_false
l_f2_1_if_true:
    call    WriteLn                 #  18:     call   WriteLn
    jmp     l_f2_0                  #  19:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    call    dummyCHARfunc           #  23:     call   t12 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #  24:     if     98 # t12 goto 11_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  25:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  27:     goto   10_while_cond
l_f2_9:
    call    dummyCHARfunc           #  29:     call   t13 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  30:     assign v1 <- t13
    movb    %al, 12(%ebp)          

l_f2_exit:
    # epilogue
    addl    $1877129608, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 34 of <array 33 of <array 49 of <array 24 of <array 100 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 88 of <array 39 of <array 18 of <array 97 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 37 of <array 74 of <array 38 of <array 87 of <array 41 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 40 of <array 73 of <array 61 of <array 89 of <array 95 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    leal    v1, %eax                #   3:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  2 <- t0
    pushl   %eax                   
    movl    $99, %eax               #   5:     param  1 <- 99
    pushl   %eax                   
    leal    v0, %eax                #   6:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #   8:     call   t2 <- f2
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   9:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  10:     call   t3 <- f1
    addl    $4, %esp               
    movl    %eax, -28(%ebp)        
    movl    $99, %eax               #  11:     param  3 <- 99
    pushl   %eax                   
    movl    $98, %eax               #  12:     if     98 # 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_5               
    jmp     l_test_6                #  13:     goto   6
l_test_5:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_7                #  16:     goto   7
l_test_6:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_7:
    movzbl  -29(%ebp), %eax         #  20:     param  2 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  21:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     param  1 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  23:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  25:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -41(%ebp)         

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <array 88 of <array 39 of <array 18 of <array 97 of <array 10 of <char>>>>>>
    .long    5
    .long   88
    .long   39
    .long   18
    .long   97
    .long   10
    .skip 59922720
v1:                                 # <array 34 of <array 33 of <array 49 of <array 24 of <array 100 of <char>>>>>>
    .long    5
    .long   34
    .long   33
    .long   49
    .long   24
    .long  100
    .skip 131947200
v2:                                 # <array 40 of <array 73 of <array 61 of <array 89 of <array 95 of <bool>>>>>>
    .long    5
    .long   40
    .long   73
    .long   61
    .long   89
    .long   95
    .skip 1506004600
v3:                                 # <array 37 of <array 74 of <array 38 of <array 87 of <array 41 of <char>>>>>>
    .long    5
    .long   37
    .long   74
    .long   38
    .long   87
    .long   41
    .skip 371124948








    # end of global data section
    #-----------------------------------------

    .end
##################################################
