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
l_f0_1_while_cond:
    movl    $16448, %eax            #   1:     if     16448 > 17015 goto 2_while_body
    movl    $17015, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $34996, %eax            #   5:     if     34996 >= 9522 goto 6_while_body
    movl    $9522, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    movl    $100, %eax              #   8:     if     100 <= 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   9:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_5_while_cond       #  14:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1_while_cond       #  16:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  18:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_13                 #  19:     goto   13
l_f0_13:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t2       <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t22      <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $t23      <bool> %ebp-70 ]
    #    -71(%ebp)   1  [ $t3       <bool> %ebp-71 ]
    #    -72(%ebp)   1  [ $t4       <bool> %ebp-72 ]
    #    -73(%ebp)   1  [ $t5       <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 6 of <array 4 of <array 10 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 3 of <array 7 of <array 10 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -96(%ebp)   4  [ $v4       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_7_if_false         #   7:     goto   7_if_false
    jmp     l_f1_7_if_false         #   8:     goto   7_if_false
    movl    $98, %eax               #   9:     if     98 = 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_11                
    jmp     l_f1_12                 #  10:     goto   12
l_f1_11:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_13                 #  13:     goto   13
l_f1_12:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_13:
    movzbl  -13(%ebp), %eax         #  17:     return t1
    jmp     l_f1_exit              
    jmp     l_f1_17_if_false        #  18:     goto   17_if_false
    jmp     l_f1_15                 #  19:     goto   15
l_f1_17_if_false:
l_f1_15:
    movl    $99, %eax               #  22:     if     99 # 100 goto 19
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_19                
    jmp     l_f1_20                 #  23:     goto   20
l_f1_19:
    movl    $1, %eax                #  25:     assign t2 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_21                 #  26:     goto   21
l_f1_20:
    movl    $0, %eax                #  28:     assign t2 <- 0
    movb    %al, -57(%ebp)         
l_f1_21:
    movzbl  -57(%ebp), %eax         #  30:     return t2
    jmp     l_f1_exit              
    movl    $85616, %eax            #  31:     if     85616 # 70151 goto 24_if_true
    movl    $70151, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_24_if_true        
    jmp     l_f1_25_if_false        #  32:     goto   25_if_false
l_f1_24_if_true:
    jmp     l_f1_23                 #  34:     goto   23
l_f1_25_if_false:
l_f1_23:
    movl    $100, %eax              #  37:     if     100 > 98 goto 28
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_28                
    jmp     l_f1_29                 #  38:     goto   29
l_f1_28:
    movl    $1, %eax                #  40:     assign t3 <- 1
    movb    %al, -71(%ebp)         
    jmp     l_f1_30                 #  41:     goto   30
l_f1_29:
    movl    $0, %eax                #  43:     assign t3 <- 0
    movb    %al, -71(%ebp)         
l_f1_30:
    movzbl  -71(%ebp), %eax         #  45:     return t3
    jmp     l_f1_exit              
    movl    $79847, %eax            #  46:     if     79847 = 79807 goto 33
    movl    $79807, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_33                
    jmp     l_f1_34                 #  47:     goto   34
l_f1_33:
    movl    $1, %eax                #  49:     assign t4 <- 1
    movb    %al, -72(%ebp)         
    jmp     l_f1_35                 #  50:     goto   35
l_f1_34:
    movl    $0, %eax                #  52:     assign t4 <- 0
    movb    %al, -72(%ebp)         
l_f1_35:
    movzbl  -72(%ebp), %eax         #  54:     return t4
    jmp     l_f1_exit              
    movl    $72083, %eax            #  55:     if     72083 >= 62832 goto 38
    movl    $62832, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_38                
    jmp     l_f1_39                 #  56:     goto   39
l_f1_38:
    movl    $1, %eax                #  58:     assign t5 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f1_40                 #  59:     goto   40
l_f1_39:
    movl    $0, %eax                #  61:     assign t5 <- 0
    movb    %al, -73(%ebp)         
l_f1_40:
    movzbl  -73(%ebp), %eax         #  63:     return t5
    jmp     l_f1_exit              
    movl    $2, %eax                #  64:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  65:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  66:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $64445, %eax            #  67:     mul    t7 <- 64445, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  68:     add    t8 <- t7, 18627
    movl    $18627, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  69:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  70:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  71:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  72:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  73:     add    t11 <- t10, 95349
    movl    $95349, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  74:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  75:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  76:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  77:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  78:     add    t14 <- t13, 49731
    movl    $49731, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  79:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  80:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  81:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  82:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  83:     add    t17 <- t16, 28216
    movl    $28216, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  84:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  85:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  86:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  87:     add    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  88:     add    t21 <- v0, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $27021, %eax            #  89:     assign @t21 <- 27021
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $61925, %eax            #  90:     if     61925 <= 55271 goto 44
    movl    $55271, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_44                
    jmp     l_f1_45                 #  91:     goto   45
l_f1_44:
    movl    $1, %eax                #  93:     assign t22 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f1_46                 #  94:     goto   46
l_f1_45:
    movl    $0, %eax                #  96:     assign t22 <- 0
    movb    %al, -69(%ebp)         
l_f1_46:
    movzbl  -69(%ebp), %eax         #  98:     assign v1 <- t22
    movb    %al, 12(%ebp)          
    jmp     l_f1_5                  #  99:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyBOOLfunc           # 102:     call   t23 <- dummyBOOLfunc
    movb    %al, -70(%ebp)         
    movzbl  -70(%ebp), %eax         # 103:     if     t23 = 1 goto 49_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_49_if_true        
    jmp     l_f1_50_if_false        # 104:     goto   50_if_false
l_f1_49_if_true:
    jmp     l_f1_48                 # 106:     goto   48
l_f1_50_if_false:
l_f1_48:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $97925, %eax            #   4:     if     97925 <= 50001 goto 5_if_true
    movl    $50001, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #  12:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_10_while_cond:
    movl    $12988, %eax            #  14:     if     12988 <= 91494 goto 11_while_body
    movl    $91494, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11_while_body     
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_while_body:
    call    dummyBOOLfunc           #  17:     call   t2 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $28696, %eax            #  18:     return 28696
    jmp     l_f2_exit              
    movl    $91988, %eax            #  19:     return 91988
    jmp     l_f2_exit              
    movl    $46048, %eax            #  20:     return 46048
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  21:     goto   10_while_cond
l_f2_9:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
    jmp     l_test_1_if_true        #   2:     goto   1_if_true
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_11_while_cond:
    jmp     l_test_10               #  11:     goto   10
    jmp     l_test_exit            
    jmp     l_test_11_while_cond    #  13:     goto   11_while_cond
l_test_10:
    movl    $35235, %eax            #  15:     sub    t0 <- 35235, 21906
    movl    $21906, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $9114, %eax             #  16:     if     9114 = t0 goto 15_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_15_if_true      
    jmp     l_test_16_if_false      #  17:     goto   16_if_false
l_test_15_if_true:
    movl    $17398, %eax            #  19:     if     17398 > 2839 goto 19_if_true
    movl    $2839, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_19_if_true      
    jmp     l_test_20_if_false      #  20:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  22:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_14               #  25:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
