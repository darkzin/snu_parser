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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 52 of <array 63 of <array 2 of <array 1 of <array 82 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 95 of <array 70 of <array 47 of <array 71 of <array 61 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 16 of <array 16 of <array 97 of <array 26 of <array 36 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $76541, %eax            #   5:     assign v3 <- 76541
    movl    %eax, 20(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_6                  #   7:     goto   6
    jmp     l_f0_7_while_cond       #   8:     goto   7_while_cond
l_f0_6:
l_f0_10_while_cond:
    movl    $1, %eax                #  11:     if     1 # 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_11_while_body     
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  14:     goto   10_while_cond
l_f0_9:
    movl    $100, %eax              #  16:     return 100
    jmp     l_f0_exit              
    movl    $97, %eax               #  17:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_17_if_false        #  18:     goto   17_if_false
    jmp     l_f0_15                 #  19:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_1_while_cond       #  22:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  24:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  25:     return t5
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  26:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  27:     return t6
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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <char> %ebp-77 ]
    #    -84(%ebp)   4  [ $t4       <ptr(4) to <array 16 of <array 16 of <array 97 of <array 26 of <array 36 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <ptr(4) to <array 95 of <array 70 of <array 47 of <array 71 of <array 61 of <char>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <ptr(4) to <array 52 of <array 63 of <array 2 of <array 1 of <array 82 of <char>>>>>>> %ebp-92 ]
    #    -93(%ebp)   1  [ $t7       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 13 of <array 55 of <array 59 of <array 59 of <array 62 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 25 of <array 7 of <array 73 of <array 22 of <array 2 of <bool>>>>>>> %ebp+20 ]
    #   -537392(%ebp)  537288  [ $v4       <array 52 of <array 63 of <array 2 of <array 1 of <array 82 of <char>>>>>> %ebp-537392 ]
    #   -1354191468(%ebp)  1353654074  [ $v5       <array 95 of <array 70 of <array 47 of <array 71 of <array 61 of <char>>>>>> %ebp-1354191468 ]
    #   -1377434244(%ebp)  23242776  [ $v6       <array 16 of <array 16 of <array 97 of <array 26 of <array 36 of <bool>>>>>> %ebp-1377434244 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1377434232, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $344358558, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-537392(%ebp)        # local array 'v4': 5 dimensions
    movl    $52,-537388(%ebp)       #   dimension 1: 52 elements
    movl    $63,-537384(%ebp)       #   dimension 2: 63 elements
    movl    $2,-537380(%ebp)        #   dimension 3: 2 elements
    movl    $1,-537376(%ebp)        #   dimension 4: 1 elements
    movl    $82,-537372(%ebp)       #   dimension 5: 82 elements
    movl    $5,-1354191468(%ebp)    # local array 'v5': 5 dimensions
    movl    $95,-1354191464(%ebp)   #   dimension 1: 95 elements
    movl    $70,-1354191460(%ebp)   #   dimension 2: 70 elements
    movl    $47,-1354191456(%ebp)   #   dimension 3: 47 elements
    movl    $71,-1354191452(%ebp)   #   dimension 4: 71 elements
    movl    $61,-1354191448(%ebp)   #   dimension 5: 61 elements
    movl    $5,-1377434244(%ebp)    # local array 'v6': 5 dimensions
    movl    $16,-1377434240(%ebp)   #   dimension 1: 16 elements
    movl    $16,-1377434236(%ebp)   #   dimension 2: 16 elements
    movl    $97,-1377434232(%ebp)   #   dimension 3: 97 elements
    movl    $26,-1377434228(%ebp)   #   dimension 4: 26 elements
    movl    $36,-1377434224(%ebp)   #   dimension 5: 36 elements

    # function body
l_f1_1_while_cond:
    movl    $90029, %eax            #   1:     param  3 <- 90029
    pushl   %eax                   
    leal    -1377434244(%ebp), %eax #   2:     &()    t4 <- v6
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   3:     param  2 <- t4
    pushl   %eax                   
    leal    -1354191468(%ebp), %eax #   4:     &()    t5 <- v5
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   5:     param  1 <- t5
    pushl   %eax                   
    leal    -537392(%ebp), %eax     #   6:     &()    t6 <- v4
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   7:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   8:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -93(%ebp)         
    movl    $100, %eax              #   9:     if     100 = t7 goto 2_while_body
    movzbl  -93(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    call    dummyINTfunc            #  14:     call   t8 <- dummyINTfunc
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $36171, %eax            #  18:     mul    t10 <- 36171, t9
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     add    t11 <- t10, 65715
    movl    $65715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  23:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #  24:     call   t14 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  28:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  30:     add    t18 <- t17, 12738
    movl    $12738, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  33:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  34:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  35:     add    t21 <- t20, 80216
    movl    $80216, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  36:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  38:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  39:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  40:     add    t25 <- v0, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -100(%ebp), %eax        #  41:     assign @t25 <- t8
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  42:     call   t26 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  43:     return t26
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $1377434232, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
l_f2_1_while_cond:
    call    WriteLn                 #   1:     call   WriteLn
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
l_f2_5_while_cond:
    jmp     l_f2_6_while_body       #   4:     goto   6_while_body
l_f2_6_while_body:
    movl    $0, %eax                #   6:     return 0
    jmp     l_f2_exit              
    movl    $97, %eax               #   7:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
    jmp     l_f2_11                 #   9:     goto   11
    jmp     l_f2_12                 #  10:     goto   12
    jmp     l_f2_12                 #  11:     goto   12
l_f2_11:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_13                 #  14:     goto   13
l_f2_12:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_13:
    movzbl  -13(%ebp), %eax         #  18:     return t4
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 16 of <array 16 of <array 97 of <array 26 of <array 36 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 95 of <array 70 of <array 47 of <array 71 of <array 61 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 52 of <array 63 of <array 2 of <array 1 of <array 82 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $97, %eax               #   6:     if     97 # 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   9:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  13:     goto   2_while_cond
    movl    $79595, %eax            #  14:     param  3 <- 79595
    pushl   %eax                   
    leal    v3, %eax                #  15:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  2 <- t0
    pushl   %eax                   
    leal    v2, %eax                #  17:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  19:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  21:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  22:     assign v0 <- t3
    movb    %al, v0                
    call    dummyProcedure          #  23:     call   dummyProcedure

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 52 of <array 63 of <array 2 of <array 1 of <array 82 of <char>>>>>>
    .long    5
    .long   52
    .long   63
    .long    2
    .long    1
    .long   82
    .skip 537264
v2:                                 # <array 95 of <array 70 of <array 47 of <array 71 of <array 61 of <char>>>>>>
    .long    5
    .long   95
    .long   70
    .long   47
    .long   71
    .long   61
    .skip 1353654050
    .align   4
v3:                                 # <array 16 of <array 16 of <array 97 of <array 26 of <array 36 of <bool>>>>>>
    .long    5
    .long   16
    .long   16
    .long   97
    .long   26
    .long   36
    .skip 23242752








    # end of global data section
    #-----------------------------------------

    .end
##################################################
