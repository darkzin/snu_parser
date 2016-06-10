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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 55 of <array 9 of <array 32 of <array 83 of <array 77 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 78 of <array 58 of <array 19 of <array 25 of <array 30 of <int>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   1:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
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
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 11 of <array 79 of <array 29 of <array 20 of <array 57 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t12 <- t11, 22548
    movl    $22548, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t13 <- t12, 95591
    movl    $95591, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t14 <- t13, 70066
    movl    $70066, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t15 <- t14, 60568
    movl    $60568, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   7:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   8:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #   9:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  10:     add    t18 <- t17, 17478
    movl    $17478, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  13:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  14:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  15:     add    t21 <- t20, 23421
    movl    $23421, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  18:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  19:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  20:     add    t24 <- t23, 3872
    movl    $3872, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  22:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  23:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  24:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  25:     add    t27 <- t26, 96472
    movl    $96472, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  26:     mul    t28 <- t27, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    20(%ebp), %eax          #  27:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  28:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  29:     add    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    20(%ebp), %eax          #  30:     add    t31 <- v4, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $56051, %eax            #  31:     assign @t31 <- 56051
    movl    -100(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $56276, %eax            #  32:     if     56276 <= 7295 goto 3_if_true
    movl    $7295, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  33:     goto   4_if_false
l_f1_3_if_true:
    movl    $24892, %eax            #  35:     return 24892
    jmp     l_f1_exit              
    movl    $76550, %eax            #  36:     sub    t32 <- 76550, 94278
    movl    $94278, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  37:     sub    t33 <- t32, 76807
    movl    $76807, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  38:     sub    t34 <- t33, 44285
    movl    $44285, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  39:     sub    t35 <- t34, 97472
    movl    $97472, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  40:     return t35
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  41:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $104, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <ptr(4) to <array 11 of <array 79 of <array 29 of <array 20 of <array 57 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <ptr(4) to <array 11 of <array 79 of <array 29 of <array 20 of <array 57 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t15      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 74 of <array 61 of <array 36 of <array 27 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 98 of <array 79 of <array 30 of <array 10 of <array 17 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -114916652(%ebp)  114916584  [ $v5       <array 11 of <array 79 of <array 29 of <array 20 of <array 57 of <int>>>>>> %ebp-114916652 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $114916640, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28729160, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-114916652(%ebp)     # local array 'v5': 5 dimensions
    movl    $11,-114916648(%ebp)    #   dimension 1: 11 elements
    movl    $79,-114916644(%ebp)    #   dimension 2: 79 elements
    movl    $29,-114916640(%ebp)    #   dimension 3: 29 elements
    movl    $20,-114916636(%ebp)    #   dimension 4: 20 elements
    movl    $57,-114916632(%ebp)    #   dimension 5: 57 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_0                  #   2:     goto   0
l_f2_0:
    call    dummyCHARfunc           #   4:     call   t12 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     assign v2 <- t12
    movb    %al, 12(%ebp)          
    leal    -114916652(%ebp), %eax  #   6:     &()    t13 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  3 <- t13
    pushl   %eax                   
    movl    $1, %eax                #   8:     param  2 <- 1
    pushl   %eax                   
    movl    $1, %eax                #   9:     param  1 <- 1
    pushl   %eax                   
    leal    -114916652(%ebp), %eax  #  10:     &()    t14 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  3 <- t14
    pushl   %eax                   
    movl    $99, %eax               #  12:     if     99 > 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_8                 
    jmp     l_f2_9                  #  13:     goto   9
l_f2_8:
    movl    $1, %eax                #  15:     assign t15 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_10                 #  16:     goto   10
l_f2_9:
    movl    $0, %eax                #  18:     assign t15 <- 0
    movb    %al, -25(%ebp)         
l_f2_10:
    movzbl  -25(%ebp), %eax         #  20:     param  2 <- t15
    pushl   %eax                   
    movl    $0, %eax                #  21:     param  1 <- 0
    pushl   %eax                   
    movl    $55077, %eax            #  22:     mul    t16 <- 55077, 25971
    movl    $25971, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     div    t17 <- t16, 6841
    movl    $6841, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     div    t18 <- t17, 53892
    movl    $53892, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     div    t19 <- t18, 91503
    movl    $91503, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     div    t20 <- t19, 64647
    movl    $64647, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $87015, %eax            #  27:     sub    t21 <- 87015, t20
    movl    -48(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     param  0 <- t21
    pushl   %eax                   
    call    f1                      #  29:     call   t22 <- f1
    addl    $16, %esp              
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     div    t23 <- t22, 13228
    movl    $13228, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     div    t24 <- t23, 58862
    movl    $58862, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  32:     param  0 <- t24
    pushl   %eax                   
    call    f1                      #  33:     call   t25 <- f1
    addl    $16, %esp              
    movl    %eax, -68(%ebp)        

l_f2_exit:
    # epilogue
    addl    $114916640, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 11 of <array 79 of <array 29 of <array 20 of <array 57 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
l_test_2_while_cond:
    movl    $61874, %eax            #   2:     if     61874 >= 16488 goto 3_while_body
    movl    $16488, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    call    dummyCHARfunc           #   5:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   6:     assign v0 <- 100
    movb    %al, v0                
    call    dummyBOOLfunc           #   7:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $78670, %eax            #   8:     if     78670 <= 6568 goto 9
    movl    $6568, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_9               
    jmp     l_test_10               #   9:     goto   10
l_test_9:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_11:
    movzbl  -15(%ebp), %eax         #  16:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  19:     goto   2_while_cond
l_test_1:
    leal    v2, %eax                #  21:     &()    t3 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  3 <- t3
    pushl   %eax                   
    movl    $1, %eax                #  23:     param  2 <- 1
    pushl   %eax                   
    jmp     l_test_20               #  24:     goto   20
    jmp     l_test_20               #  25:     goto   20
    jmp     l_test_20               #  26:     goto   20
l_test_20:
    jmp     l_test_17               #  28:     goto   17
    movl    $1, %eax                #  29:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_18               #  30:     goto   18
l_test_17:
    movl    $0, %eax                #  32:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_test_18:
    movzbl  -21(%ebp), %eax         #  34:     param  1 <- t4
    pushl   %eax                   
    movl    $11039, %eax            #  35:     mul    t5 <- 11039, 97647
    movl    $97647, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     mul    t6 <- t5, 6549
    movl    $6549, %ebx            
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  38:     call   t7 <- f1
    addl    $16, %esp              
    movl    %eax, -36(%ebp)        
    jmp     l_test_27_if_false      #  39:     goto   27_if_false
    jmp     l_test_exit            
    call    dummyINTfunc            #  41:     call   t8 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    call    dummyINTfunc            #  42:     call   t9 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    jmp     l_test_25               #  43:     goto   25
l_test_27_if_false:
l_test_25:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 11 of <array 79 of <array 29 of <array 20 of <array 57 of <int>>>>>>
    .long    5
    .long   11
    .long   79
    .long   29
    .long   20
    .long   57
    .skip 114916560








    # end of global data section
    #-----------------------------------------

    .end
##################################################
