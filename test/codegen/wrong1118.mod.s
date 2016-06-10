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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]

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
    movl    $99, %eax               #   1:     if     99 <= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t1 <= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_5                 
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   9:     goto   7
l_f0_6:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #  13:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  16:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $1, %eax                #  17:     if     1 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  18:     goto   12_if_false
l_f0_11_if_true:
    movl    $97, %eax               #  20:     assign v0 <- 97
    movb    %al, -16(%ebp)         
    jmp     l_f0_10                 #  21:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t18      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 20 of <array 89 of <array 91 of <array 63 of <array 48 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 71 of <array 94 of <array 79 of <array 12 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 76 of <array 35 of <array 85 of <array 49 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -85(%ebp)   1  [ $v4       <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $v5       <bool> %ebp-86 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $41955, %eax            #   0:     if     41955 <= 52856 goto 1_if_true
    movl    $52856, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   4:     goto   5_while_cond
l_f1_8_while_cond:
    jmp     l_f1_7                  #   6:     goto   7
    jmp     l_f1_8_while_cond       #   7:     goto   8_while_cond
l_f1_7:
    call    ReadInt                 #   9:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  11:     goto   12_while_cond
l_f1_15_while_cond:
    movl    $0, %eax                #  13:     if     0 # 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_16_while_body     
    jmp     l_f1_14                 #  14:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  16:     goto   15_while_cond
l_f1_14:
l_f1_19_while_cond:
    movl    $97, %eax               #  19:     if     97 > 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_20_while_body     
    jmp     l_f1_18                 #  20:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  22:     goto   19_while_cond
l_f1_18:
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $72058, %eax            #  27:     mul    t3 <- 72058, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  28:     add    t4 <- t3, 33000
    movl    $33000, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  32:     mul    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  33:     add    t7 <- t6, 73851
    movl    $73851, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  37:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  38:     add    t10 <- t9, 44231
    movl    $44231, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  42:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     add    t13 <- t12, 42030
    movl    $42030, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  44:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  46:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  47:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  48:     add    t17 <- v2, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $98, %eax               #  49:     assign @t17 <- 98
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_0                  #  50:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #  53:     if     100 < 99 goto 24
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_24                
    jmp     l_f1_25                 #  54:     goto   25
l_f1_24:
    movl    $1, %eax                #  56:     assign t18 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f1_26                 #  57:     goto   26
l_f1_25:
    movl    $0, %eax                #  59:     assign t18 <- 0
    movb    %al, -49(%ebp)         
l_f1_26:
    movzbl  -49(%ebp), %eax         #  61:     assign v5 <- t18
    movb    %al, -86(%ebp)         
    jmp     l_f1_31                 #  62:     goto   31
    jmp     l_f1_31                 #  63:     goto   31
    jmp     l_f1_31                 #  64:     goto   31
    jmp     l_f1_31                 #  65:     goto   31
    jmp     l_f1_31                 #  66:     goto   31
    jmp     l_f1_31                 #  67:     goto   31
    jmp     l_f1_29_if_true         #  68:     goto   29_if_true
l_f1_31:
    jmp     l_f1_30_if_false        #  70:     goto   30_if_false
l_f1_29_if_true:
    jmp     l_f1_28                 #  72:     goto   28
l_f1_30_if_false:
l_f1_28:

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 77 of <array 58 of <array 14 of <array 30 of <array 32 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 87 of <array 61 of <array 99 of <array 64 of <array 54 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_7_while_cond:
    movl    $98, %eax               #   3:     if     98 # 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #   4:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   6:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $1, %eax                #  11:     assign v3 <- 1
    movb    %al, 20(%ebp)          
    movl    $99, %eax               #  12:     if     99 # 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  13:     goto   13_if_false
l_f2_12_if_true:
l_f2_16_while_cond:
    jmp     l_f2_15                 #  16:     goto   15
    jmp     l_f2_exit              
    jmp     l_f2_16_while_cond      #  18:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_11                 #  20:     goto   11
l_f2_13_if_false:
l_f2_11:

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
    movl    $99, %eax               #   0:     if     99 <= 99 goto 3
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_3               
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_3:
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #   7:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_9_while_cond:
    movl    $48947, %eax            #  11:     if     48947 > 79035 goto 10_while_body
    movl    $79035, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  12:     goto   8
l_test_10_while_body:
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  15:     goto   13_while_cond
    jmp     l_test_17_if_false      #  16:     goto   17_if_false
    jmp     l_test_15               #  17:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_exit            
    movl    $1, %eax                #  21:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_9_while_cond     #  22:     goto   9_while_cond
l_test_8:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
