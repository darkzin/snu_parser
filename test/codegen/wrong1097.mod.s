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
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t4       <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t5       <char> %ebp-78 ]
    #    -79(%ebp)   1  [ $t6       <bool> %ebp-79 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 22 of <array 55 of <array 77 of <array 28 of <char>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v2       <char> %ebp-93 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $100, %eax              #   1:     if     100 > 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t1
    jmp     l_f0_exit              
    movl    $80008, %eax            #  10:     mul    t2 <- 80008, 66373
    movl    $66373, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  11:     div    t3 <- t2, 31179
    movl    $31179, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    $72679, %eax            #  12:     if     72679 # t3 goto 8
    movl    -76(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #  13:     goto   9
l_f0_8:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f0_10                 #  16:     goto   10
l_f0_9:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -77(%ebp)         
l_f0_10:
    movzbl  -77(%ebp), %eax         #  20:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_14_if_false        #  21:     goto   14_if_false
    call    dummyCHARfunc           #  22:     call   t5 <- dummyCHARfunc
    movb    %al, -78(%ebp)         
    movl    $72580, %eax            #  23:     param  0 <- 72580
    pushl   %eax                   
    call    WriteInt                #  24:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_19_if_false        #  25:     goto   19_if_false
    jmp     l_f0_17                 #  26:     goto   17
l_f0_19_if_false:
l_f0_17:
    jmp     l_f0_20                 #  29:     goto   20
l_f0_20:
    movl    $99, %eax               #  31:     if     99 = 98 goto 24
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_24                
    jmp     l_f0_25                 #  32:     goto   25
l_f0_24:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -79(%ebp)         
    jmp     l_f0_26                 #  35:     goto   26
l_f0_25:
    movl    $0, %eax                #  37:     assign t6 <- 0
    movb    %al, -79(%ebp)         
l_f0_26:
    movzbl  -79(%ebp), %eax         #  39:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    movl    $0, %eax                #  40:     if     0 # 0 goto 29_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_29_if_true        
    jmp     l_f0_30_if_false        #  41:     goto   30_if_false
l_f0_29_if_true:
    jmp     l_f0_28                 #  43:     goto   28
l_f0_30_if_false:
l_f0_28:
l_f0_33_while_cond:
    movl    $99, %eax               #  47:     if     99 >= 100 goto 34_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_34_while_body     
    jmp     l_f0_32                 #  48:     goto   32
l_f0_34_while_body:
    jmp     l_f0_33_while_cond      #  50:     goto   33_while_cond
l_f0_32:
l_f0_37_while_cond:
    jmp     l_f0_36                 #  53:     goto   36
    jmp     l_f0_37_while_cond      #  54:     goto   37_while_cond
l_f0_36:
    movl    $2, %eax                #  56:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $20790, %eax            #  59:     mul    t8 <- 20790, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  60:     add    t9 <- t8, 38861
    movl    $38861, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  61:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -92(%ebp), %eax         #  64:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  65:     add    t12 <- t11, 19381
    movl    $19381, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  66:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  68:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  69:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  70:     add    t15 <- t14, 56813
    movl    $56813, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  72:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  73:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  74:     mul    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  75:     add    t18 <- t17, 22874
    movl    $22874, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  76:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  77:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  78:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  79:     add    t21 <- t19, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  80:     add    t22 <- v1, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $100, %eax              #  81:     assign @t22 <- 100
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_12                 #  82:     goto   12
l_f0_14_if_false:
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 27 of <array 75 of <array 77 of <array 32 of <array 23 of <char>>>>>>> %ebp+8 ]

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
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   3:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_3_while_cond:
    movl    $100, %eax              #   5:     if     100 = 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   6:     goto   2
l_f1_4_while_body:
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #   9:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $97, %eax               #  10:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  11:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 55 of <array 2 of <array 67 of <array 3 of <char>>>>>>> %ebp+8 ]
    #    -30(%ebp)   1  [ $v1       <bool> %ebp-30 ]

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
    movl    $97, %eax               #   0:     if     97 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $71840, %eax            #   7:     add    t2 <- 71840, 80703
    movl    $80703, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t3 <- t2, 51853
    movl    $51853, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     return t3
    jmp     l_f2_exit              
    call    dummyINTfunc            #  10:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_f2_11_while_cond:
    movl    $81768, %eax            #  12:     if     81768 = 20518 goto 12_while_body
    movl    $20518, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  15:     goto   11_while_cond
l_f2_10:
    movl    $98894, %eax            #  17:     if     98894 < 63070 goto 15
    movl    $63070, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_15                
    jmp     l_f2_16                 #  18:     goto   16
l_f2_15:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_17                 #  21:     goto   17
l_f2_16:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f2_17:
    movzbl  -29(%ebp), %eax         #  25:     assign v1 <- t5
    movb    %al, -30(%ebp)         
    movl    $19840, %eax            #  26:     return 19840
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  27:     goto   6
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_3                #   0:     goto   3
    jmp     l_test_3                #   1:     goto   3
l_test_3:
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #   7:     assign v0 <- 100
    movb    %al, v0                
l_test_8_while_cond:
    call    dummyCHARfunc           #   9:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  10:     if     99 # t0 goto 9_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #  11:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  13:     goto   8_while_cond
l_test_7:

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
