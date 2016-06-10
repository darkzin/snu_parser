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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 30 of <array 86 of <array 47 of <array 36 of <array 81 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $62550, %eax            #   0:     add    t4 <- 62550, 12304
    movl    $12304, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   1:     add    t5 <- t4, 41259
    movl    $41259, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   2:     add    t6 <- t5, 76319
    movl    $76319, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   3:     add    t7 <- t6, 93004
    movl    $93004, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   4:     sub    t8 <- t7, 55290
    movl    $55290, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   5:     add    t9 <- t8, 91943
    movl    $91943, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   6:     assign v2 <- t9
    movl    %eax, 12(%ebp)         
    call    dummyBOOLfunc           #   7:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $35444, %eax            #  11:     mul    t12 <- 35444, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t13 <- t12, 97872
    movl    $97872, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t16 <- t15, 79401
    movl    $79401, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t19 <- t18, 44709
    movl    $44709, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  26:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  27:     add    t22 <- t21, 99162
    movl    $99162, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  28:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  30:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  31:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  32:     add    t26 <- v3, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $99, %eax               #  33:     assign @t26 <- 99
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 30 of <array 86 of <array 47 of <array 36 of <array 81 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #   -353594220(%ebp)  353594184  [ $v1       <array 30 of <array 86 of <array 47 of <array 36 of <array 81 of <char>>>>>> %ebp-353594220 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $353594208, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $88398552, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-353594220(%ebp)     # local array 'v1': 5 dimensions
    movl    $30,-353594216(%ebp)    #   dimension 1: 30 elements
    movl    $86,-353594212(%ebp)    #   dimension 2: 86 elements
    movl    $47,-353594208(%ebp)    #   dimension 3: 47 elements
    movl    $36,-353594204(%ebp)    #   dimension 4: 36 elements
    movl    $81,-353594200(%ebp)    #   dimension 5: 81 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     if     t4 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_5:
    jmp     l_f1_2                  #   4:     goto   2
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f1_3:
    movzbl  -18(%ebp), %eax         #  10:     return t5
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $0, %eax                #  12:     if     0 # 0 goto 8_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_8_while_body      
    jmp     l_f1_6                  #  13:     goto   6
l_f1_8_while_body:
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_14_while_cond:
    jmp     l_f1_14_while_cond      #  18:     goto   14_while_cond
l_f1_17_while_cond:
    movl    $100, %eax              #  20:     if     100 >= 100 goto 18_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_18_while_body     
    jmp     l_f1_16                 #  21:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  23:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_7_while_cond       #  25:     goto   7_while_cond
l_f1_6:
    movl    $100, %eax              #  27:     param  3 <- 100
    pushl   %eax                   
    leal    -353594220(%ebp), %eax  #  28:     &()    t6 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     param  2 <- t6
    pushl   %eax                   
    movl    $87376, %eax            #  30:     add    t7 <- 87376, 45004
    movl    $45004, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     add    t8 <- t7, 49342
    movl    $49342, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t9 <- t8, 24573
    movl    $24573, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     param  1 <- t9
    pushl   %eax                   
    movl    $97, %eax               #  34:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  35:     call   t10 <- f0
    addl    $16, %esp              
    movl    %eax, -16(%ebp)        

l_f1_exit:
    # epilogue
    addl    $353594208, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 67 of <array 90 of <array 11 of <array 24 of <array 63 of <int>>>>>>> %ebp+8 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
l_f2_0:
    call    f1                      #   4:     call   t4 <- f1
    movb    %al, -13(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_8_while_body       #   6:     goto   8_while_body
l_f2_8_while_body:
    call    f1                      #   8:     call   t5 <- f1
    movb    %al, -14(%ebp)         
l_f2_13_while_cond:
    jmp     l_f2_12                 #  10:     goto   12
    jmp     l_f2_13_while_cond      #  11:     goto   13_while_cond
l_f2_12:
l_f2_16_while_cond:
    movl    $99, %eax               #  14:     if     99 <= 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_17_while_body     
    jmp     l_f2_15                 #  15:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  17:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_7_while_cond       #  19:     goto   7_while_cond

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 = t0 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $65410, %eax            #  11:     add    t2 <- 65410, 48583
    movl    $48583, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     assign v1 <- t2
    movl    %eax, v1               
    movl    $24434, %eax            #  13:     if     24434 = 61672 goto 8_if_true
    movl    $61672, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8_if_true       
    jmp     l_test_9_if_false       #  14:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_13_if_false      #  16:     goto   13_if_false
    jmp     l_test_11               #  17:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $1, %eax                #  20:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_17_if_false      #  21:     goto   17_if_false
    jmp     l_test_15               #  22:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_7                #  25:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $78560, %eax            #  28:     div    t3 <- 78560, 12779
    movl    $12779, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     assign v1 <- t3
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
