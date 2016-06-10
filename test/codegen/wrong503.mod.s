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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <bool> %ebp-13 ]
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
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    movl    $78724, %eax            #   2:     assign v0 <- 78724
    movl    %eax, 8(%ebp)          
    movl    $1, %eax                #   3:     assign v1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_7_while_cond:
    movl    $98, %eax               #   8:     assign v2 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f0_7_while_cond       #   9:     goto   7_while_cond

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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t5       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 5 of <array 1 of <array 6 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #    -89(%ebp)   1  [ $v3       <bool> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $81816, %eax            #   1:     if     81816 = 79802 goto 2_while_body
    movl    $79802, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_4                  #   4:     goto   4
l_f1_4:
l_f1_8_while_cond:
    movl    $99, %eax               #   7:     if     99 <= 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  10:     goto   8_while_cond
l_f1_7:
l_f1_12_while_cond:
    movl    $13073, %eax            #  13:     if     13073 > 86688 goto 13_while_body
    movl    $86688, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_13_while_body     
    jmp     l_f1_11                 #  14:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  16:     goto   12_while_cond
l_f1_11:
    movl    $25161, %eax            #  18:     return 25161
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  19:     goto   1_while_cond
l_f1_0:
l_f1_17_while_cond:
    movl    $37894, %eax            #  22:     sub    t4 <- 37894, 43230
    movl    $43230, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  23:     if     t4 > 12634 goto 18_while_body
    movl    $12634, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_18_while_body     
    jmp     l_f1_16                 #  24:     goto   16
l_f1_18_while_body:
    movl    $26212, %eax            #  26:     return 26212
    jmp     l_f1_exit              
    movl    $100, %eax              #  27:     if     100 >= 99 goto 22
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_22                
    jmp     l_f1_23                 #  28:     goto   23
l_f1_22:
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f1_24                 #  31:     goto   24
l_f1_23:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -69(%ebp)         
l_f1_24:
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $83713, %eax            #  38:     mul    t7 <- 83713, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  39:     add    t8 <- t7, 44215
    movl    $44215, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  43:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  44:     add    t11 <- t10, 5033
    movl    $5033, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  48:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  49:     add    t14 <- t13, 12832
    movl    $12832, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  51:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  52:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  53:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  54:     add    t17 <- t16, 34321
    movl    $34321, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  55:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  56:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  57:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  58:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  59:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -69(%ebp), %eax         #  60:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_27_while_cond:
    movl    $1, %eax                #  62:     if     1 = 0 goto 28_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_28_while_body     
    jmp     l_f1_26                 #  63:     goto   26
l_f1_28_while_body:
    jmp     l_f1_27_while_cond      #  65:     goto   27_while_cond
l_f1_26:
    jmp     l_f1_17_while_cond      #  67:     goto   17_while_cond
l_f1_16:
    call    dummyBOOLfunc           #  69:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  70:     if     t22 = 1 goto 31_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_31_if_true        
    jmp     l_f1_32_if_false        #  71:     goto   32_if_false
l_f1_31_if_true:
    jmp     l_f1_30                 #  73:     goto   30
l_f1_32_if_false:
l_f1_30:

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 9 of <array 5 of <array 1 of <array 6 of <array 9 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 5 of <array 1 of <array 6 of <array 9 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 9 of <array 5 of <array 1 of <array 6 of <array 9 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 2 of <array 7 of <array 6 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #    -49(%ebp)   1  [ $v1       <char> %ebp-49 ]
    #   -2504(%ebp)  2454  [ $v2       <array 9 of <array 5 of <array 1 of <array 6 of <array 9 of <bool>>>>>> %ebp-2504 ]
    #   -2508(%ebp)   4  [ $v3       <int> %ebp-2508 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2496, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $624, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2504(%ebp)          # local array 'v2': 5 dimensions
    movl    $9,-2500(%ebp)          #   dimension 1: 9 elements
    movl    $5,-2496(%ebp)          #   dimension 2: 5 elements
    movl    $1,-2492(%ebp)          #   dimension 3: 1 elements
    movl    $6,-2488(%ebp)          #   dimension 4: 6 elements
    movl    $9,-2484(%ebp)          #   dimension 5: 9 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     return 0
    jmp     l_f2_exit              
    movl    $98, %eax               #   2:     assign v1 <- 98
    movb    %al, -49(%ebp)         
    leal    -2504(%ebp), %eax       #   3:     &()    t4 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  2 <- t4
    pushl   %eax                   
    movl    $11316, %eax            #   5:     param  1 <- 11316
    pushl   %eax                   
    movl    $54363, %eax            #   6:     param  0 <- 54363
    pushl   %eax                   
    call    f1                      #   7:     call   t5 <- f1
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    leal    _str_1, %eax            #   8:     &()    t6 <- _str_1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
    movl    $100, %eax              #  11:     if     100 >= 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_8                 
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_10                 #  15:     goto   10
l_f2_9:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_f2_10:
    movzbl  -37(%ebp), %eax         #  19:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  20:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_14_if_false        #  23:     goto   14_if_false
    movl    $99, %eax               #  24:     if     99 <= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  25:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  27:     goto   15
l_f2_17_if_false:
l_f2_15:
l_f2_20_while_cond:
    jmp     l_f2_19                 #  31:     goto   19
    jmp     l_f2_20_while_cond      #  32:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_12                 #  34:     goto   12
l_f2_14_if_false:
l_f2_12:
l_f2_23_while_cond:
    call    WriteLn                 #  38:     call   WriteLn
    leal    -2504(%ebp), %eax       #  39:     &()    t8 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  40:     param  2 <- t8
    pushl   %eax                   
    movl    $25875, %eax            #  41:     param  1 <- 25875
    pushl   %eax                   
    movl    $96277, %eax            #  42:     param  0 <- 96277
    pushl   %eax                   
    call    f1                      #  43:     call   t9 <- f1
    addl    $12, %esp              
    movl    %eax, -48(%ebp)        
l_f2_28_while_cond:
    jmp     l_f2_27                 #  45:     goto   27
    jmp     l_f2_28_while_cond      #  46:     goto   28_while_cond
l_f2_27:
    movl    $87805, %eax            #  48:     assign v3 <- 87805
    movl    %eax, -2508(%ebp)      
    leal    -2504(%ebp), %eax       #  49:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  50:     param  2 <- t10
    pushl   %eax                   
    movl    $10199, %eax            #  51:     mul    t11 <- 10199, 97889
    movl    $97889, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  52:     param  1 <- t11
    pushl   %eax                   
    movl    $43812, %eax            #  53:     param  0 <- 43812
    pushl   %eax                   
    call    f1                      #  54:     call   t12 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_f2_23_while_cond      #  55:     goto   23_while_cond

l_f2_exit:
    # epilogue
    addl    $2496, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_test_exit            
    movl    $100, %eax              #   2:     assign v0 <- 100
    movb    %al, v0                
    movl    $45962, %eax            #   3:     add    t0 <- 45962, 617
    movl    $617, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     sub    t1 <- t0, 29252
    movl    $29252, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t2 <- t1, 88465
    movl    $88465, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    movl    $49643, %eax            #   8:     add    t3 <- 49643, 99018
    movl    $99018, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     assign v1 <- t3
    movl    %eax, v1               

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
