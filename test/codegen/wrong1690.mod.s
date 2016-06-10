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
    #    -13(%ebp)   1  [ $t30      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t31      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 22 of <array 42 of <array 48 of <array 46 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]

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
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_1                  #   2:     goto   1
    jmp     l_f0_1                  #   3:     goto   1
    movl    $0, %eax                #   4:     if     0 # 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t30 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t30 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v3 <- t30
    movb    %al, -21(%ebp)         
    jmp     l_f0_2_while_cond       #  13:     goto   2_while_cond
l_f0_1:
l_f0_11_while_cond:
    movl    $98, %eax               #  16:     if     98 >= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  17:     goto   10
l_f0_12_while_body:
    call    ReadInt                 #  19:     call   t31 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_exit              
    movl    $1, %eax                #  21:     assign v3 <- 1
    movb    %al, -21(%ebp)         
l_f0_18_while_cond:
    movl    $1, %eax                #  23:     if     1 = 0 goto 19_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_19_while_body     
    jmp     l_f0_17                 #  24:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  26:     goto   18_while_cond
l_f0_17:
    movl    $99, %eax               #  28:     assign v4 <- 99
    movb    %al, -22(%ebp)         
    jmp     l_f0_11_while_cond      #  29:     goto   11_while_cond
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t30      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t31      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t32      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t33      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t34      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t35      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t36      <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 69 of <array 80 of <array 56 of <array 6 of <array 30 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $18757, %eax            #   2:     if     18757 = 83753 goto 5_if_true
    movl    $83753, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $15985, %eax            #   8:     param  0 <- 15985
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    movl    $86052, %eax            #  10:     if     86052 # 14988 goto 10_if_true
    movl    $14988, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  11:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $100, %eax              #  16:     if     100 >= 99 goto 14
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_14                
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $1, %eax                #  19:     assign t30 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $0, %eax                #  22:     assign t30 <- 0
    movb    %al, -13(%ebp)         
l_f1_16:
    movzbl  -13(%ebp), %eax         #  24:     assign v2 <- t30
    movb    %al, 16(%ebp)          
    jmp     l_f1_20_if_false        #  25:     goto   20_if_false
    jmp     l_f1_18                 #  26:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_exit              
    jmp     l_f1_24_if_false        #  30:     goto   24_if_false
    jmp     l_f1_22                 #  31:     goto   22
l_f1_24_if_false:
l_f1_22:
    jmp     l_f1_1                  #  34:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $61114, %eax            #  37:     mul    t31 <- 61114, 62576
    movl    $62576, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  38:     mul    t32 <- t31, 44664
    movl    $44664, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     mul    t33 <- t32, 6910
    movl    $6910, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  40:     div    t34 <- t33, 88952
    movl    $88952, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  41:     mul    t35 <- t34, 18790
    movl    $18790, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  42:     mul    t36 <- t35, 71474
    movl    $71474, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $40931, %eax            #  43:     if     40931 < t36 goto 26_if_true
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  44:     goto   27_if_false
l_f1_26_if_true:
    jmp     l_f1_exit              
l_f1_31_while_cond:
    movl    $98, %eax               #  48:     if     98 > 98 goto 32_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_32_while_body     
    jmp     l_f1_30                 #  49:     goto   30
l_f1_32_while_body:
    jmp     l_f1_31_while_cond      #  51:     goto   31_while_cond
l_f1_30:
    jmp     l_f1_25                 #  53:     goto   25
l_f1_27_if_false:
l_f1_25:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t30      <char> %ebp-13 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_exit              
l_f2_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t30 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     if     t30 >= 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #   5:     goto   2
l_f2_4_while_body:
l_f2_7_while_cond:
    jmp     l_f2_6                  #   8:     goto   6
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_exit              
    jmp     l_f2_3_while_cond       #  12:     goto   3_while_cond
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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 15 of <array 22 of <array 42 of <array 48 of <array 46 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <ptr(4) to <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t4       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t5       <ptr(4) to <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t6       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t7       <ptr(4) to <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t8       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <int> %ebp-132 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $120, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $30, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    leal    v1, %eax                #   2:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   4:     &()    t2 <- v0
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    movl    $80454, %eax            #   6:     sub    t3 <- 80454, 51602
    movl    $51602, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   7:     sub    t4 <- t3, 30556
    movl    $30556, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   8:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   9:     call   f0
    addl    $12, %esp              
    jmp     l_test_2_while_cond     #  10:     goto   2_while_cond
    jmp     l_test_exit            
    leal    v1, %eax                #  12:     &()    t5 <- v1
    movl    %eax, -116(%ebp)       
    movl    $35354, %eax            #  13:     sub    t6 <- 35354, 39566
    movl    $39566, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t7 <- v1
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  16:     param  0 <- t7
    pushl   %eax                   
    call    DIM                     #  17:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  18:     mul    t9 <- t6, t8
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  19:     add    t10 <- t9, 47532
    movl    $47532, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  21:     &()    t11 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  24:     mul    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t14 <- t13, 14669
    movl    $14669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  27:     &()    t15 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  28:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  29:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  31:     add    t18 <- t17, 88416
    movl    $88416, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  33:     &()    t19 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  35:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  36:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    $45073, %eax            #  37:     sub    t22 <- 45073, 92671
    movl    $92671, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  38:     sub    t23 <- t22, 8810
    movl    $8810, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t24 <- t21, t23
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  40:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    v1, %eax                #  41:     &()    t26 <- v1
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  42:     param  0 <- t26
    pushl   %eax                   
    call    DOFS                    #  43:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  44:     add    t28 <- t25, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -116(%ebp), %eax        #  45:     add    t29 <- t5, t28
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $99, %eax               #  46:     assign @t29 <- 99
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $120, %esp              # remove locals
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
v0:                                 # <array 15 of <array 22 of <array 42 of <array 48 of <array 46 of <bool>>>>>>
    .long    5
    .long   15
    .long   22
    .long   42
    .long   48
    .long   46
    .skip 30602880
v1:                                 # <array 86 of <array 84 of <array 100 of <array 84 of <array 73 of <char>>>>>>
    .long    5
    .long   86
    .long   84
    .long  100
    .long   84
    .long   73
    .skip 134789504
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
