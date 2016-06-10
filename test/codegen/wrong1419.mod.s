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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   2:     if     1 = t7 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $5158, %eax             #   5:     if     5158 > 65979 goto 5
    movl    $65979, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_5                 
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   9:     goto   7
l_f0_6:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t8
    movb    %al, -15(%ebp)         
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    movl    $68403, %eax            #  16:     assign v1 <- 68403
    movl    %eax, -20(%ebp)        
l_f0_11_while_cond:
    jmp     l_f0_10                 #  18:     goto   10
    jmp     l_f0_10                 #  19:     goto   10
    jmp     l_f0_11_while_cond      #  20:     goto   11_while_cond
l_f0_10:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t8       <bool> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>>> %ebp+8 ]

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
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     assign t7 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_6                  #   2:     goto   6
    movl    $0, %eax                #   3:     assign t7 <- 0
    movb    %al, -23(%ebp)         
l_f1_6:
    jmp     l_f1_9                  #   5:     goto   9
    movl    $1, %eax                #   6:     assign t8 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f1_10                 #   7:     goto   10
l_f1_9:
    movl    $0, %eax                #   9:     assign t8 <- 0
    movb    %al, -24(%ebp)         
l_f1_10:
    movzbl  -23(%ebp), %eax         #  11:     if     t7 # t8 goto 2_while_body
    movzbl  -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    movl    $65184, %eax            #  16:     mul    t9 <- 65184, 3416
    movl    $3416, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $70971, %eax            #  17:     div    t10 <- 70971, 53783
    movl    $53783, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     div    t11 <- t10, 48515
    movl    $48515, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -28(%ebp), %eax         #  19:     if     t9 >= t11 goto 15
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_15                
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $1, %eax                #  22:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_17                 #  23:     goto   17
l_f1_16:
    movl    $0, %eax                #  25:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_17:
    movzbl  -21(%ebp), %eax         #  27:     return t12
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  28:     call   t13 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <ptr(4) to <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>>> %ebp-116 ]
    #   -117(%ebp)   1  [ $t8       <bool> %ebp-117 ]
    #   -118(%ebp)   1  [ $t9       <char> %ebp-118 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -1163289744(%ebp)  1163289624  [ $v3       <array 80 of <array 88 of <array 40 of <array 51 of <array 81 of <char>>>>>> %ebp-1163289744 ]
    #   -1163289745(%ebp)   1  [ $v4       <char> %ebp-1163289745 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1163289736, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $290822434, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1163289744(%ebp)    # local array 'v3': 5 dimensions
    movl    $80,-1163289740(%ebp)   #   dimension 1: 80 elements
    movl    $88,-1163289736(%ebp)   #   dimension 2: 88 elements
    movl    $40,-1163289732(%ebp)   #   dimension 3: 40 elements
    movl    $51,-1163289728(%ebp)   #   dimension 4: 51 elements
    movl    $81,-1163289724(%ebp)   #   dimension 5: 81 elements

    # function body
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     return 100
    jmp     l_f2_exit              
l_f2_5_while_cond:
    movl    $38326, %eax            #   3:     if     38326 <= 40320 goto 6_while_body
    movl    $40320, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
    leal    -1163289744(%ebp), %eax #   8:     &()    t7 <- v3
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   9:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  10:     call   t8 <- f1
    addl    $4, %esp               
    movb    %al, -117(%ebp)        
    movl    $98472, %eax            #  11:     if     98472 <= 62268 goto 10_if_true
    movl    $62268, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  14:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
    call    dummyCHARfunc           #  18:     call   t9 <- dummyCHARfunc
    movb    %al, -118(%ebp)        
    call    dummyCHARfunc           #  19:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    -1163289744(%ebp), %eax #  20:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    $98951, %eax            #  21:     div    t12 <- 98951, 35480
    movl    $35480, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     div    t13 <- t12, 12820
    movl    $12820, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    leal    -1163289744(%ebp), %eax #  24:     &()    t14 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  26:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t17 <- t16, 80761
    movl    $80761, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    leal    -1163289744(%ebp), %eax #  30:     &()    t18 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  31:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  32:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  34:     add    t21 <- t20, 61390
    movl    $61390, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    leal    -1163289744(%ebp), %eax #  36:     &()    t22 <- v3
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  37:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  38:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  39:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  40:     add    t25 <- t24, 61578
    movl    $61578, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    leal    -1163289744(%ebp), %eax #  42:     &()    t26 <- v3
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  43:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  44:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  45:     mul    t28 <- t25, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  46:     add    t29 <- t28, 61622
    movl    $61622, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  47:     mul    t30 <- t29, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    -1163289744(%ebp), %eax #  48:     &()    t31 <- v3
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  49:     param  0 <- t31
    pushl   %eax                   
    call    DOFS                    #  50:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  51:     add    t33 <- t30, t32
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -20(%ebp), %eax         #  52:     add    t34 <- t11, t33
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movzbl  -13(%ebp), %eax         #  53:     assign @t34 <- t10
    movl    -112(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $1163289736, %esp       # remove locals
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
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t6       <char> %ebp-28 ]

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
l_test_1_while_cond:
    movl    $7067, %eax             #   1:     mul    t0 <- 7067, 71446
    movl    $71446, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 22698
    movl    $22698, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $86860, %eax            #   3:     sub    t2 <- 86860, t1
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $60371, %eax            #   4:     if     60371 > t2 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   5:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    movl    $62705, %eax            #   9:     param  2 <- 62705
    pushl   %eax                   
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_7                #  11:     goto   7
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_7:
    movzbl  -25(%ebp), %eax         #  14:     param  1 <- t3
    pushl   %eax                   
    call    dummyBOOLfunc           #  15:     call   t4 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  16:     if     t4 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10              
    jmp     l_test_11               #  17:     goto   11
l_test_10:
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_12               #  20:     goto   12
l_test_11:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -27(%ebp)         
l_test_12:
    movzbl  -27(%ebp), %eax         #  24:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  25:     call   t6 <- f2
    addl    $12, %esp              
    movb    %al, -28(%ebp)         
    jmp     l_test_exit            
    call    dummyProcedure          #  27:     call   dummyProcedure

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
