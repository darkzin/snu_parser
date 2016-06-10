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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 36 of <array 89 of <array 80 of <array 33 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $39219, %eax            #   0:     add    t4 <- 39219, 55966
    movl    $55966, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t5 <- t4, 11886
    movl    $11886, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t6 <- t5, 21274
    movl    $21274, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t7 <- t6, 16817
    movl    $16817, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $74189, %eax            #   6:     sub    t8 <- 74189, 35256
    movl    $35256, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     add    t9 <- t8, 26160
    movl    $26160, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    movl    $97, %eax               #  10:     if     97 >= 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_3                 
    jmp     l_f0_4                  #  11:     goto   4
l_f0_3:
    movl    $1, %eax                #  13:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_5                  #  14:     goto   5
l_f0_4:
    movl    $0, %eax                #  16:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_5:
    movzbl  -13(%ebp), %eax         #  18:     return t10
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -57(%ebp)   1  [ $t4       <char> %ebp-57 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 53 of <array 26 of <array 36 of <array 78 of <array 41 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 40 of <array 8 of <array 50 of <array 19 of <array 30 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 76 of <array 40 of <array 67 of <array 18 of <array 50 of <char>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v4       <bool> %ebp-81 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $22471, %eax            #   1:     if     22471 # 98085 goto 4_if_true
    movl    $98085, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   2:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_if_false:
l_f1_3:
    movl    $51516, %eax            #   7:     assign v0 <- 51516
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_11_while_cond:
    movl    $99, %eax               #  14:     if     99 < 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_12_while_body     
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_while_body:
    movl    $47080, %eax            #  17:     assign v0 <- 47080
    movl    %eax, 8(%ebp)          
    movl    $98, %eax               #  18:     if     98 < 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  19:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  21:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_19                 #  24:     goto   19
l_f1_19:
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $98135, %eax            #  29:     mul    t6 <- 98135, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  30:     add    t7 <- t6, 48747
    movl    $48747, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  34:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  35:     add    t10 <- t9, 81481
    movl    $81481, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  39:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     add    t13 <- t12, 4457
    movl    $4457, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  44:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  45:     add    t16 <- t15, 90721
    movl    $90721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  46:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  47:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  48:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  49:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  50:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $1, %eax                #  51:     assign @t20 <- 1
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_11_while_cond      #  52:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_exit              
    jmp     l_f1_23                 #  55:     goto   23
l_f1_23:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $97, %eax               #   1:     if     97 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    call    ReadInt                 #  10:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $22949, %eax            #  11:     assign v1 <- 22949
    movl    %eax, 12(%ebp)         
    movl    $1, %eax                #  12:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  13:     if     99 >= 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  14:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  16:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_8                  #  19:     goto   8
l_f2_8:

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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    jmp     l_test_4                #   0:     goto   4
    jmp     l_test_5                #   1:     goto   5
l_test_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    jmp     l_test_9                #   8:     goto   9
    jmp     l_test_9                #   9:     goto   9
    movl    $1, %eax                #  10:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #  11:     goto   10
l_test_9:
    movl    $0, %eax                #  13:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  15:     if     t0 # t1 goto 1_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #  16:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #  18:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  21:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_16_if_false      #  22:     goto   16_if_false
    movl    $99, %eax               #  23:     assign v0 <- 99
    movb    %al, v0                
l_test_19_while_cond:
    jmp     l_test_19_while_cond    #  25:     goto   19_while_cond
    jmp     l_test_exit            
    jmp     l_test_14               #  27:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_24_if_false      #  30:     goto   24_if_false
    call    WriteLn                 #  31:     call   WriteLn
    movl    $97, %eax               #  32:     if     97 = 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_27_if_true      
    jmp     l_test_28_if_false      #  33:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_26               #  35:     goto   26
l_test_28_if_false:
l_test_26:
    movl    $1, %eax                #  38:     if     1 = 1 goto 31
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_31              
    jmp     l_test_32               #  39:     goto   32
l_test_31:
    movl    $1, %eax                #  41:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_33               #  42:     goto   33
l_test_32:
    movl    $0, %eax                #  44:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_33:
    movzbl  -16(%ebp), %eax         #  46:     assign v1 <- t3
    movb    %al, v1                
l_test_36_while_cond:
    jmp     l_test_36_while_cond    #  48:     goto   36_while_cond
    jmp     l_test_22               #  49:     goto   22
l_test_24_if_false:
l_test_22:

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
