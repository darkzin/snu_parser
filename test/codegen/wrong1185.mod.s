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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 20 of <array 3 of <array 6 of <array 57 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $100, %eax              #   0:     if     100 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $90468, %eax            #   3:     return 90468
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_9                  #   5:     goto   9
    jmp     l_f0_10                 #   6:     goto   10
l_f0_9:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #   9:     goto   11
l_f0_10:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  13:     if     t2 # 0 goto 7_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  16:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_0                  #  18:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  21:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  22:     if     100 <= t3 goto 14_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  23:     goto   15_if_false
l_f0_14_if_true:
    movl    $39978, %eax            #  25:     return 39978
    jmp     l_f0_exit              
    jmp     l_f0_13                 #  26:     goto   13
l_f0_15_if_false:
l_f0_13:
    call    ReadInt                 #  29:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 20 of <array 3 of <array 6 of <array 57 of <array 3 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 20 of <array 3 of <array 6 of <array 57 of <array 3 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 29 of <array 30 of <array 21 of <array 16 of <array 88 of <bool>>>>>>> %ebp+12 ]
    #   -61632(%ebp)  61584  [ $v2       <array 20 of <array 3 of <array 6 of <array 57 of <array 3 of <char>>>>>> %ebp-61632 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $61620, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $15405, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-61632(%ebp)         # local array 'v2': 5 dimensions
    movl    $20,-61628(%ebp)        #   dimension 1: 20 elements
    movl    $3,-61624(%ebp)         #   dimension 2: 3 elements
    movl    $6,-61620(%ebp)         #   dimension 3: 6 elements
    movl    $57,-61616(%ebp)        #   dimension 4: 57 elements
    movl    $3,-61612(%ebp)         #   dimension 5: 3 elements

    # function body
    movl    $51513, %eax            #   0:     param  2 <- 51513
    pushl   %eax                   
    movl    $76229, %eax            #   1:     param  2 <- 76229
    pushl   %eax                   
    movl    $21827, %eax            #   2:     add    t2 <- 21827, 18261
    movl    $18261, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t3 <- t2, 35612
    movl    $35612, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  1 <- t3
    pushl   %eax                   
    leal    -61632(%ebp), %eax      #   5:     &()    t4 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     div    t6 <- t5, 47001
    movl    $47001, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     div    t7 <- t6, 61801
    movl    $61801, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     param  1 <- t7
    pushl   %eax                   
    leal    -61632(%ebp), %eax      #  11:     &()    t8 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  13:     call   t9 <- f0
    addl    $12, %esp              
    movl    %eax, -48(%ebp)        
l_f1_2_while_cond:
    movl    $97, %eax               #  15:     if     97 # 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_3_while_body      
    jmp     l_f1_1                  #  16:     goto   1
l_f1_3_while_body:
    movl    $98, %eax               #  18:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #  21:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  22:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $61620, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
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
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 29 of <array 30 of <array 21 of <array 16 of <array 88 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t21      <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t3       <char> %ebp-89 ]
    #    -90(%ebp)   1  [ $t4       <bool> %ebp-90 ]
    #    -96(%ebp)   4  [ $t5       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 78 of <array 51 of <array 93 of <array 32 of <array 50 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 5 of <array 69 of <array 59 of <array 33 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 94 of <array 61 of <array 86 of <array 46 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -113(%ebp)   1  [ $v4       <bool> %ebp-113 ]
    #   -25724300(%ebp)  25724184  [ $v5       <array 29 of <array 30 of <array 21 of <array 16 of <array 88 of <bool>>>>>> %ebp-25724300 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $25724288, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6431072, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-25724300(%ebp)      # local array 'v5': 5 dimensions
    movl    $29,-25724296(%ebp)     #   dimension 1: 29 elements
    movl    $30,-25724292(%ebp)     #   dimension 2: 30 elements
    movl    $21,-25724288(%ebp)     #   dimension 3: 21 elements
    movl    $16,-25724284(%ebp)     #   dimension 4: 16 elements
    movl    $88,-25724280(%ebp)     #   dimension 5: 88 elements

    # function body
l_f2_1_while_cond:
    leal    -25724300(%ebp), %eax   #   1:     &()    t2 <- v5
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     param  1 <- t2
    pushl   %eax                   
    movl    $100, %eax              #   3:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #   4:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #   5:     if     t3 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    movl    $13944, %eax            #   8:     if     13944 # 39946 goto 5
    movl    $39946, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #   9:     goto   6
l_f2_5:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -90(%ebp)         
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -90(%ebp)         
l_f2_7:
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $82283, %eax            #  19:     mul    t6 <- 82283, t5
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  20:     add    t7 <- t6, 27315
    movl    $27315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  24:     mul    t9 <- t7, t8
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  25:     add    t10 <- t9, 98578
    movl    $98578, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  29:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     add    t13 <- t12, 42967
    movl    $42967, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  33:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  34:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     add    t16 <- t15, 56468
    movl    $56468, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  38:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  40:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -90(%ebp), %eax         #  41:     assign @t20 <- t4
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  42:     call   t21 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    movl    $0, %eax                #  43:     assign v4 <- 0
    movb    %al, -113(%ebp)        
    jmp     l_f2_1_while_cond       #  44:     goto   1_while_cond
l_f2_0:
    movl    $86405, %eax            #  46:     add    t22 <- 86405, 45934
    movl    $45934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  47:     add    t23 <- t22, 28721
    movl    $28721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  48:     sub    t24 <- t23, 12109
    movl    $12109, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     add    t25 <- t24, 66532
    movl    $66532, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  50:     add    t26 <- t25, 32492
    movl    $32492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  51:     add    t27 <- t26, 82166
    movl    $82166, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  52:     assign v3 <- t27
    movl    %eax, 20(%ebp)         
    movl    $64384, %eax            #  53:     if     64384 > 53981 goto 13_if_true
    movl    $53981, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  54:     goto   14_if_false
l_f2_13_if_true:
l_f2_17_while_cond:
    movl    $0, %eax                #  57:     if     0 = 0 goto 20_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  58:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  60:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_17_while_cond      #  63:     goto   17_while_cond
    jmp     l_f2_12                 #  64:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $25724288, %esp         # remove locals
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
    movl    $1, %eax                #   0:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   1:     goto   7
    movl    $0, %eax                #   2:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #   4:     if     t0 = 0 goto 1
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   5:     goto   2
l_test_1:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #   8:     goto   3
l_test_2:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #  12:     assign v0 <- t1
    movb    %al, v0                
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

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
