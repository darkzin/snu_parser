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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 6 of <array 7 of <array 4 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t7
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 9 of <array 1 of <array 6 of <array 6 of <char>>>>>>> %ebp+16 ]
    #   -100(%ebp)   4  [ $v4       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   1:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   2:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $28652, %eax            #   3:     mul    t7 <- 28652, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   4:     add    t8 <- t7, 54500
    movl    $54500, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   6:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   7:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #   8:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $97189, %eax            #   9:     div    t11 <- 97189, 5688
    movl    $5688, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t12 <- t11, 87554
    movl    $87554, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t13 <- t10, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  15:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t16 <- t15, 53944
    movl    $53944, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  20:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     add    t19 <- t18, 62056
    movl    $62056, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  24:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  25:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t23 <- v3, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $98, %eax               #  27:     assign @t23 <- 98
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_3_if_false         #  28:     goto   3_if_false
    movl    $65566, %eax            #  29:     assign v4 <- 65566
    movl    %eax, -100(%ebp)       
    movl    $50642, %eax            #  30:     div    t24 <- 50642, 43474
    movl    $43474, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  31:     div    t25 <- t24, 70415
    movl    $70415, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  32:     div    t26 <- t25, 36570
    movl    $36570, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  33:     return t26
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  34:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $0, %eax                #  37:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f1_6                  #  38:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 1 of <array 1 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 9 of <array 9 of <array 1 of <array 8 of <char>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    movl    $39791, %eax            #   0:     if     39791 <= 87389 goto 1_if_true
    movl    $87389, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #   3:     return 98
    jmp     l_f2_exit              
    movl    $100, %eax              #   4:     return 100
    jmp     l_f2_exit              
    movl    $98, %eax               #   5:     if     98 = 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #   6:     goto   8
l_f2_7:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
l_f2_8:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  13:     assign v3 <- t6
    movb    %al, -14(%ebp)         
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $97, %eax               #  17:     return 97
    jmp     l_f2_exit              
    call    WriteLn                 #  18:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1
    movl    $1, %ebx               
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
    movl    $1, %eax                #  10:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $20131, %eax            #  12:     if     20131 >= 33373 goto 8_if_true
    movl    $33373, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8_if_true       
    jmp     l_test_9_if_false       #  13:     goto   9_if_false
l_test_8_if_true:
    call    ReadInt                 #  15:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
    jmp     l_test_13               #  18:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_7                #  21:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $63381, %eax            #  24:     mul    t3 <- 63381, 79544
    movl    $79544, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     if     t3 = 89427 goto 17_if_true
    movl    $89427, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  26:     goto   18_if_false
l_test_17_if_true:
    call    dummyBOOLfunc           #  28:     call   t4 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $100, %eax              #  29:     if     100 >= 100 goto 22
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_22              
    jmp     l_test_23               #  30:     goto   23
l_test_22:
    movl    $1, %eax                #  32:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_24               #  33:     goto   24
l_test_23:
    movl    $0, %eax                #  35:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_test_24:
    movzbl  -26(%ebp), %eax         #  37:     assign v0 <- t5
    movb    %al, v0                
l_test_27_while_cond:
    movl    $1, %eax                #  39:     if     1 # 1 goto 28_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_28_while_body   
    jmp     l_test_26               #  40:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  42:     goto   27_while_cond
l_test_26:
    jmp     l_test_16               #  44:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $57263, %eax            #  47:     param  0 <- 57263
    pushl   %eax                   
    call    WriteInt                #  48:     call   WriteInt
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
