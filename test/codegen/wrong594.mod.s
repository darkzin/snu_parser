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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 1 of <array 7 of <array 4 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    movl    $82547, %eax            #   0:     if     82547 = 82447 goto 1
    movl    $82447, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t3
    movb    %al, -15(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  11:     goto   5
l_f0_5:
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $99, %eax               #   2:     if     99 > 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6                 
    jmp     l_f1_7                  #   3:     goto   7
l_f1_6:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_8:
    movzbl  -13(%ebp), %eax         #  10:     return t3
    jmp     l_f1_exit              
    movl    $1, %eax                #  11:     if     1 # 0 goto 11
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11                
    jmp     l_f1_12                 #  12:     goto   12
l_f1_11:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_13                 #  15:     goto   13
l_f1_12:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_13:
    movzbl  -14(%ebp), %eax         #  19:     return t4
    jmp     l_f1_exit              
    movl    $9699, %eax             #  20:     assign v1 <- 9699
    movl    %eax, 12(%ebp)         
    jmp     l_f1_1_while_cond       #  21:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  23:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  24:     if     t5 = 1 goto 21
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_21                
    jmp     l_f1_18                 #  25:     goto   18
l_f1_21:
    movl    $1, %eax                #  27:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_19                 #  28:     goto   19
l_f1_18:
    movl    $0, %eax                #  30:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f1_19:
    movzbl  -16(%ebp), %eax         #  32:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_23                 #  33:     goto   23
    jmp     l_f1_23                 #  34:     goto   23
    jmp     l_f1_23                 #  35:     goto   23
    jmp     l_f1_24                 #  36:     goto   24
l_f1_23:
    movl    $1, %eax                #  38:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_25                 #  39:     goto   25
l_f1_24:
    movl    $0, %eax                #  41:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f1_25:
    movzbl  -17(%ebp), %eax         #  43:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t30      <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t4       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t5       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp-124 ]
    #   -125(%ebp)   1  [ $t7       <bool> %ebp-125 ]
    #   -132(%ebp)   4  [ $t8       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t9       <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp-136 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 9 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp+8 ]
    #   -6160(%ebp)  6024  [ $v1       <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>> %ebp-6160 ]
    #   -6161(%ebp)   1  [ $v2       <char> %ebp-6161 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6152, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1538, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6160(%ebp)          # local array 'v1': 5 dimensions
    movl    $4,-6156(%ebp)          #   dimension 1: 4 elements
    movl    $3,-6152(%ebp)          #   dimension 2: 3 elements
    movl    $10,-6148(%ebp)         #   dimension 3: 10 elements
    movl    $5,-6144(%ebp)          #   dimension 4: 5 elements
    movl    $10,-6140(%ebp)         #   dimension 5: 10 elements

    # function body
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movzbl  -93(%ebp), %eax         #   2:     if     t3 # 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $82889, %eax            #   5:     sub    t4 <- 82889, 25106
    movl    $25106, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   6:     add    t5 <- t4, 66172
    movl    $66172, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   7:     param  1 <- t5
    pushl   %eax                   
    leal    -6160(%ebp), %eax       #   8:     &()    t6 <- v1
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #   9:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  10:     call   t7 <- f1
    addl    $8, %esp               
    movb    %al, -125(%ebp)        
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #  13:     call   t8 <- dummyINTfunc
    movl    %eax, -132(%ebp)       
    leal    -6160(%ebp), %eax       #  14:     &()    t9 <- v1
    movl    %eax, -136(%ebp)       
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    leal    -6160(%ebp), %eax       #  16:     &()    t10 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  18:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $23986, %eax            #  19:     mul    t12 <- 23986, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t13 <- t12, 16030
    movl    $16030, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    leal    -6160(%ebp), %eax       #  22:     &()    t14 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  24:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  25:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $94002, %eax            #  26:     sub    t17 <- 94002, 91909
    movl    $91909, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     sub    t18 <- t17, 22654
    movl    $22654, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  28:     add    t19 <- t18, 33800
    movl    $33800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -40(%ebp), %eax         #  29:     add    t20 <- t16, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    leal    -6160(%ebp), %eax       #  31:     &()    t21 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  32:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  33:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  34:     mul    t23 <- t20, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  35:     add    t24 <- t23, 56284
    movl    $56284, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    leal    -6160(%ebp), %eax       #  37:     &()    t25 <- v1
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  38:     param  0 <- t25
    pushl   %eax                   
    call    DIM                     #  39:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  40:     mul    t27 <- t24, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  41:     add    t28 <- t27, 57636
    movl    $57636, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  42:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    -6160(%ebp), %eax       #  43:     &()    t30 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  44:     param  0 <- t30
    pushl   %eax                   
    call    DOFS                    #  45:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -92(%ebp), %eax         #  46:     add    t32 <- t29, t31
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -136(%ebp), %eax        #  47:     add    t33 <- t9, t32
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $99, %eax               #  48:     assign @t33 <- 99
    movl    -112(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $6152, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 > t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_4                #   5:     goto   4
l_test_4:
    movl    $57714, %eax            #   7:     param  0 <- 57714
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               
l_test_9_while_cond:
    jmp     l_test_8                #  10:     goto   8
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  14:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_14_while_cond:
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  19:     goto   17_while_cond
    jmp     l_test_exit            
    movl    $6520, %eax             #  21:     param  1 <- 6520
    pushl   %eax                   
    leal    v0, %eax                #  22:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  24:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $1, %eax                #  25:     if     1 = 0 goto 22_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_22_if_true      
    jmp     l_test_23_if_false      #  26:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  28:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_14_while_cond    #  31:     goto   14_while_cond

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <array 4 of <array 3 of <array 10 of <array 5 of <array 10 of <char>>>>>>
    .long    5
    .long    4
    .long    3
    .long   10
    .long    5
    .long   10
    .skip 6000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
