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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <char> %ebp-49 ]
    #    -50(%ebp)   1  [ $t2       <char> %ebp-50 ]
    #    -51(%ebp)   1  [ $t20      <bool> %ebp-51 ]
    #    -52(%ebp)   1  [ $t21      <bool> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 1 of <array 7 of <array 8 of <array 8 of <char>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -50(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   3:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $81528, %eax            #   4:     mul    t4 <- 81528, t3
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   5:     add    t5 <- t4, 14835
    movl    $14835, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #   9:     mul    t7 <- t5, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  10:     add    t8 <- t7, 35223
    movl    $35223, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  14:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t11 <- t10, 50615
    movl    $50615, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  19:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t14 <- t13, 36767
    movl    $36767, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  23:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t18 <- v1, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -50(%ebp), %eax         #  26:     assign @t18 <- t2
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_0                  #  27:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  29:     call   t19 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
    movl    $99, %eax               #  30:     if     99 <= t19 goto 5
    movzbl  -49(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_5                 
    jmp     l_f0_6                  #  31:     goto   6
l_f0_5:
    movl    $1, %eax                #  33:     assign t20 <- 1
    movb    %al, -51(%ebp)         
    jmp     l_f0_7                  #  34:     goto   7
l_f0_6:
    movl    $0, %eax                #  36:     assign t20 <- 0
    movb    %al, -51(%ebp)         
l_f0_7:
    movzbl  -51(%ebp), %eax         #  38:     return t20
    jmp     l_f0_exit              
    movl    $90876, %eax            #  39:     if     90876 > 59793 goto 10_if_true
    movl    $59793, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  40:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_14                 #  42:     goto   14
l_f0_14:
    movl    $1, %eax                #  44:     assign t21 <- 1
    movb    %al, -52(%ebp)         
    jmp     l_f0_16                 #  45:     goto   16
    movl    $0, %eax                #  46:     assign t21 <- 0
    movb    %al, -52(%ebp)         
l_f0_16:
    movzbl  -52(%ebp), %eax         #  48:     return t21
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  49:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]

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
    movl    $43772, %eax            #   0:     mul    t2 <- 43772, 13290
    movl    $13290, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $33159, %eax            #   1:     if     33159 >= t2 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $100, %eax              #   4:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_8                  #   8:     goto   8
l_f1_8:
    jmp     l_f1_5                  #  10:     goto   5
l_f1_5:
    call    dummyBOOLfunc           #  12:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  13:     if     t3 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  14:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  16:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_2_if_true          #   1:     goto   2_if_true
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_8_if_false         #   4:     goto   8_if_false
    jmp     l_f2_6                  #   5:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $1, %eax                #   8:     return 1
    jmp     l_f2_exit              
    movl    $8985, %eax             #   9:     if     8985 > 2790 goto 11
    movl    $2790, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_11                
    jmp     l_f2_12                 #  10:     goto   12
l_f2_11:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_13                 #  13:     goto   13
l_f2_12:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_13:
    movzbl  -17(%ebp), %eax         #  17:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  18:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_16                 #  21:     goto   16
    jmp     l_f2_17                 #  22:     goto   17
    jmp     l_f2_17                 #  23:     goto   17
l_f2_16:
    movl    $1, %eax                #  25:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_18                 #  26:     goto   18
l_f2_17:
    movl    $0, %eax                #  28:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f2_18:
    movzbl  -18(%ebp), %eax         #  30:     return t4
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #   6:     goto   3_while_cond
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   8:     assign v0 <- 99
    movb    %al, v0                

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
