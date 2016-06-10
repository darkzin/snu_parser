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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 25 of <array 42 of <array 52 of <array 70 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 46 of <array 60 of <array 67 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>>> %ebp+16 ]

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
l_f0_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   3:     if     98 = t2 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_exit              

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
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <ptr(4) to <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t28      <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $t29      <bool> %ebp-90 ]
    #    -96(%ebp)   4  [ $t3       <ptr(4) to <array 70 of <array 46 of <array 60 of <array 67 of <array 1 of <char>>>>>>> %ebp-96 ]
    #    -97(%ebp)   1  [ $t30      <bool> %ebp-97 ]
    #    -98(%ebp)   1  [ $t31      <bool> %ebp-98 ]
    #   -104(%ebp)   4  [ $t4       <ptr(4) to <array 20 of <array 25 of <array 42 of <array 52 of <array 70 of <int>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t5       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $v1       <int> %ebp-128 ]
    #   -305760152(%ebp)  305760024  [ $v2       <array 20 of <array 25 of <array 42 of <array 52 of <array 70 of <int>>>>>> %ebp-305760152 ]
    #   -318704576(%ebp)  12944424  [ $v3       <array 70 of <array 46 of <array 60 of <array 67 of <array 1 of <char>>>>>> %ebp-318704576 ]
    #   -701046820(%ebp)  382342244  [ $v4       <array 26 of <array 89 of <array 62 of <array 65 of <array 41 of <bool>>>>>> %ebp-701046820 ]
    #   -701046821(%ebp)   1  [ $v5       <bool> %ebp-701046821 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $701046812, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $175261703, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-305760152(%ebp)     # local array 'v2': 5 dimensions
    movl    $20,-305760148(%ebp)    #   dimension 1: 20 elements
    movl    $25,-305760144(%ebp)    #   dimension 2: 25 elements
    movl    $42,-305760140(%ebp)    #   dimension 3: 42 elements
    movl    $52,-305760136(%ebp)    #   dimension 4: 52 elements
    movl    $70,-305760132(%ebp)    #   dimension 5: 70 elements
    movl    $5,-318704576(%ebp)     # local array 'v3': 5 dimensions
    movl    $70,-318704572(%ebp)    #   dimension 1: 70 elements
    movl    $46,-318704568(%ebp)    #   dimension 2: 46 elements
    movl    $60,-318704564(%ebp)    #   dimension 3: 60 elements
    movl    $67,-318704560(%ebp)    #   dimension 4: 67 elements
    movl    $1,-318704556(%ebp)     #   dimension 5: 1 elements
    movl    $5,-701046820(%ebp)     # local array 'v4': 5 dimensions
    movl    $26,-701046816(%ebp)    #   dimension 1: 26 elements
    movl    $89,-701046812(%ebp)    #   dimension 2: 89 elements
    movl    $62,-701046808(%ebp)    #   dimension 3: 62 elements
    movl    $65,-701046804(%ebp)    #   dimension 4: 65 elements
    movl    $41,-701046800(%ebp)    #   dimension 5: 41 elements

    # function body
    movl    $58391, %eax            #   0:     assign v1 <- 58391
    movl    %eax, -128(%ebp)       
    movl    $7998, %eax             #   1:     if     7998 >= 85514 goto 2_if_true
    movl    $85514, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    leal    -701046820(%ebp), %eax  #   4:     &()    t2 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     param  2 <- t2
    pushl   %eax                   
    leal    -318704576(%ebp), %eax  #   6:     &()    t3 <- v3
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   7:     param  1 <- t3
    pushl   %eax                   
    leal    -305760152(%ebp), %eax  #   8:     &()    t4 <- v2
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   9:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  10:     call   f0
    addl    $12, %esp              
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #  12:     goto   7_while_cond
    movl    $0, %eax                #  13:     if     0 # 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_10                
    jmp     l_f1_11                 #  14:     goto   11
l_f1_10:
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_f1_12                 #  17:     goto   12
l_f1_11:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -105(%ebp)        
l_f1_12:
    movzbl  -105(%ebp), %eax        #  21:     assign v5 <- t5
    movb    %al, -701046821(%ebp)  
    leal    -701046820(%ebp), %eax  #  22:     &()    t6 <- v4
    movl    %eax, -112(%ebp)       
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    leal    -701046820(%ebp), %eax  #  24:     &()    t7 <- v4
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  25:     param  0 <- t7
    pushl   %eax                   
    call    DIM                     #  26:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    $28937, %eax            #  27:     mul    t9 <- 28937, t8
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  28:     add    t10 <- t9, 17585
    movl    $17585, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    leal    -701046820(%ebp), %eax  #  30:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  32:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  33:     mul    t13 <- t10, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     add    t14 <- t13, 44345
    movl    $44345, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    leal    -701046820(%ebp), %eax  #  36:     &()    t15 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  38:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  39:     mul    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  40:     add    t18 <- t17, 30014
    movl    $30014, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    leal    -701046820(%ebp), %eax  #  42:     &()    t19 <- v4
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  43:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  44:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -48(%ebp), %eax         #  45:     mul    t21 <- t18, t20
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  46:     add    t22 <- t21, 53671
    movl    $53671, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  47:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    leal    -701046820(%ebp), %eax  #  48:     &()    t24 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     param  0 <- t24
    pushl   %eax                   
    call    DOFS                    #  50:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  51:     add    t26 <- t23, t25
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -112(%ebp), %eax        #  52:     add    t27 <- t6, t26
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $0, %eax                #  53:     assign @t27 <- 0
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  54:     call   t28 <- dummyBOOLfunc
    movb    %al, -89(%ebp)         
    movl    $43512, %eax            #  55:     if     43512 > 52904 goto 17
    movl    $52904, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_17                
    jmp     l_f1_18                 #  56:     goto   18
l_f1_17:
    movl    $1, %eax                #  58:     assign t29 <- 1
    movb    %al, -90(%ebp)         
    jmp     l_f1_19                 #  59:     goto   19
l_f1_18:
    movl    $0, %eax                #  61:     assign t29 <- 0
    movb    %al, -90(%ebp)         
l_f1_19:
    movzbl  -90(%ebp), %eax         #  63:     return t29
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  64:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_22_while_cond:
    call    dummyBOOLfunc           #  68:     call   t30 <- dummyBOOLfunc
    movb    %al, -97(%ebp)         
    movzbl  -97(%ebp), %eax         #  69:     if     t30 = 1 goto 28
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_28                
    jmp     l_f1_26                 #  70:     goto   26
l_f1_28:
    jmp     l_f1_26                 #  72:     goto   26
    movl    $1, %eax                #  73:     assign t31 <- 1
    movb    %al, -98(%ebp)         
    jmp     l_f1_27                 #  74:     goto   27
l_f1_26:
    movl    $0, %eax                #  76:     assign t31 <- 0
    movb    %al, -98(%ebp)         
l_f1_27:
    movzbl  -98(%ebp), %eax         #  78:     if     t31 = 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_23_while_body     
    jmp     l_f1_21                 #  79:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  81:     goto   22_while_cond
l_f1_21:

l_f1_exit:
    # epilogue
    addl    $701046812, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $51759, %eax            #   3:     if     51759 > 2442 goto 3_while_body
    movl    $2442, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    movl    $97278, %eax            #   7:     if     97278 = 73164 goto 7_while_body
    movl    $73164, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_while_body:
    movl    $95667, %eax            #  10:     assign v1 <- 95667
    movl    %eax, 8(%ebp)          
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
    movl    $100, %eax              #  15:     if     100 <= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  16:     goto   12_if_false
l_f2_11_if_true:
    call    ReadInt                 #  18:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  19:     call   t4 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  20:     call   t5 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_f2_10                 #  21:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
