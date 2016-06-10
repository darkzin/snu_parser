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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 93 of <array 54 of <array 1 of <array 84 of <array 96 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_f0_2_while_cond:
    movl    $13157, %eax            #   4:     mul    t2 <- 13157, 76946
    movl    $76946, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t3 <- t2, 55404
    movl    $55404, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $37321, %eax            #   6:     if     37321 # t3 goto 3_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   9:     goto   2_while_cond
l_f0_1:
    movl    $98, %eax               #  11:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               

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
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 93 of <array 54 of <array 1 of <array 84 of <array 96 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t3       <char> %ebp-89 ]
    #    -90(%ebp)   1  [ $t4       <bool> %ebp-90 ]
    #    -96(%ebp)   4  [ $t5       <ptr(4) to <array 93 of <array 54 of <array 1 of <array 84 of <array 96 of <int>>>>>>> %ebp-96 ]
    #    -97(%ebp)   1  [ $t6       <char> %ebp-97 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 97 of <array 51 of <array 10 of <array 22 of <array 77 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 56 of <array 53 of <array 31 of <array 55 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 45 of <array 19 of <array 21 of <array 27 of <array 25 of <bool>>>>>>> %ebp+16 ]
    #   -113(%ebp)   1  [ $v3       <char> %ebp-113 ]
    #   -161989772(%ebp)  161989656  [ $v4       <array 93 of <array 54 of <array 1 of <array 84 of <array 96 of <int>>>>>> %ebp-161989772 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $161989760, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $40497440, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-161989772(%ebp)     # local array 'v4': 5 dimensions
    movl    $93,-161989768(%ebp)    #   dimension 1: 93 elements
    movl    $54,-161989764(%ebp)    #   dimension 2: 54 elements
    movl    $1,-161989760(%ebp)     #   dimension 3: 1 elements
    movl    $84,-161989756(%ebp)    #   dimension 4: 84 elements
    movl    $96,-161989752(%ebp)    #   dimension 5: 96 elements

    # function body
    movl    $98, %eax               #   0:     if     98 < 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     param  1 <- t1
    pushl   %eax                   
    leal    -161989772(%ebp), %eax  #   9:     &()    t2 <- v4
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  10:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  11:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #  12:     assign v3 <- t3
    movb    %al, -113(%ebp)        
    movl    $1, %eax                #  13:     if     1 = 0 goto 6
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #  14:     goto   7
l_f1_6:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -90(%ebp)         
    jmp     l_f1_8                  #  17:     goto   8
l_f1_7:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -90(%ebp)         
l_f1_8:
    movzbl  -90(%ebp), %eax         #  21:     param  1 <- t4
    pushl   %eax                   
    leal    -161989772(%ebp), %eax  #  22:     &()    t5 <- v4
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  23:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  24:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -97(%ebp)         
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $66845, %eax            #  28:     mul    t8 <- 66845, t7
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  29:     add    t9 <- t8, 90169
    movl    $90169, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -112(%ebp), %eax        #  33:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t12 <- t11, 33756
    movl    $33756, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  39:     add    t15 <- t14, 21429
    movl    $21429, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  42:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  43:     mul    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  44:     add    t18 <- t17, 79230
    movl    $79230, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  45:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  47:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  48:     add    t21 <- t19, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  49:     add    t22 <- v0, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -97(%ebp), %eax         #  50:     assign @t22 <- t6
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $90577, %eax            #  51:     add    t23 <- 90577, 99956
    movl    $99956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  52:     add    t24 <- t23, 80091
    movl    $80091, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  53:     sub    t25 <- t24, 39312
    movl    $39312, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  54:     add    t26 <- t25, 98751
    movl    $98751, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  55:     return t26
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $161989760, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 45 of <array 19 of <array 21 of <array 27 of <array 25 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 23 of <array 56 of <array 53 of <array 31 of <array 55 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 97 of <array 51 of <array 10 of <array 22 of <array 77 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 15 of <array 28 of <array 95 of <array 47 of <array 30 of <int>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <bool> %ebp-33 ]
    #   -83802240(%ebp)  83802204  [ $v2       <array 97 of <array 51 of <array 10 of <array 22 of <array 77 of <char>>>>>> %ebp-83802240 ]
    #   -200192384(%ebp)  116390144  [ $v3       <array 23 of <array 56 of <array 53 of <array 31 of <array 55 of <char>>>>>> %ebp-200192384 ]
    #   -212312036(%ebp)  12119649  [ $v4       <array 45 of <array 19 of <array 21 of <array 27 of <array 25 of <bool>>>>>> %ebp-212312036 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $212312024, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $53078006, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-83802240(%ebp)      # local array 'v2': 5 dimensions
    movl    $97,-83802236(%ebp)     #   dimension 1: 97 elements
    movl    $51,-83802232(%ebp)     #   dimension 2: 51 elements
    movl    $10,-83802228(%ebp)     #   dimension 3: 10 elements
    movl    $22,-83802224(%ebp)     #   dimension 4: 22 elements
    movl    $77,-83802220(%ebp)     #   dimension 5: 77 elements
    movl    $5,-200192384(%ebp)     # local array 'v3': 5 dimensions
    movl    $23,-200192380(%ebp)    #   dimension 1: 23 elements
    movl    $56,-200192376(%ebp)    #   dimension 2: 56 elements
    movl    $53,-200192372(%ebp)    #   dimension 3: 53 elements
    movl    $31,-200192368(%ebp)    #   dimension 4: 31 elements
    movl    $55,-200192364(%ebp)    #   dimension 5: 55 elements
    movl    $5,-212312036(%ebp)     # local array 'v4': 5 dimensions
    movl    $45,-212312032(%ebp)    #   dimension 1: 45 elements
    movl    $19,-212312028(%ebp)    #   dimension 2: 19 elements
    movl    $21,-212312024(%ebp)    #   dimension 3: 21 elements
    movl    $27,-212312020(%ebp)    #   dimension 4: 27 elements
    movl    $25,-212312016(%ebp)    #   dimension 5: 25 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $81890, %eax            #   1:     if     81890 <= 23781 goto 2
    movl    $23781, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, -33(%ebp)         
    movl    $28182, %eax            #  10:     if     28182 > 3339 goto 7_if_true
    movl    $3339, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  11:     goto   8_if_false
l_f2_7_if_true:
l_f2_11_while_cond:
    jmp     l_f2_11_while_cond      #  14:     goto   11_while_cond
    leal    -212312036(%ebp), %eax  #  15:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  2 <- t3
    pushl   %eax                   
    leal    -200192384(%ebp), %eax  #  17:     &()    t4 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  1 <- t4
    pushl   %eax                   
    leal    -83802240(%ebp), %eax   #  19:     &()    t5 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  21:     call   t6 <- f1
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    jmp     l_f2_14                 #  22:     goto   14
l_f2_14:
    jmp     l_f2_6                  #  24:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $212312024, %esp        # remove locals
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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_5_while_cond:
    jmp     l_test_4                #   3:     goto   4
    jmp     l_test_5_while_cond     #   4:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
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
