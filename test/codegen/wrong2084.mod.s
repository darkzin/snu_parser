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
    #    -13(%ebp)   1  [ $t29      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t30      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t31      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t32      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t33      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t34      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t35      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t36      <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 77 of <array 91 of <array 14 of <array 64 of <array 45 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 81 of <array 17 of <array 99 of <array 25 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 45 of <array 19 of <array 20 of <array 97 of <array 63 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t29 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $58242, %eax            #   1:     mul    t30 <- 58242, 19522
    movl    $19522, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $17130, %eax            #   2:     sub    t31 <- 17130, t30
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t31
    jmp     l_f0_exit              
    movl    $82751, %eax            #   4:     mul    t32 <- 82751, 67789
    movl    $67789, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t33 <- t32, 89943
    movl    $89943, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     sub    t34 <- t33, 29232
    movl    $29232, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     add    t35 <- t34, 59153
    movl    $59153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     add    t36 <- t35, 71465
    movl    $71465, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   9:     return t36
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t29      <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 41 of <array 10 of <array 68 of <array 55 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t29 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t29
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $99, %eax               #   3:     if     99 < 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   7:     goto   6_while_cond
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
    movl    $64386, %eax            #  10:     assign v2 <- 64386
    movl    %eax, 16(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t29      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t30      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 93 of <array 81 of <array 8 of <array 84 of <array 43 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 33 of <array 72 of <array 25 of <array 24 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   1:     call   t29 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_5_while_cond:
    movl    $0, %eax                #   3:     if     0 # 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_6_while_body      
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
    call    dummyINTfunc            #   9:     call   t30 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $72900, %eax            #  10:     if     72900 >= 48433 goto 10_if_true
    movl    $48433, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
l_f2_10_if_true:
l_f2_14_while_cond:
    jmp     l_f2_13                 #  14:     goto   13
    jmp     l_f2_14_while_cond      #  15:     goto   14_while_cond
l_f2_13:
    movl    $38261, %eax            #  17:     if     38261 < 16514 goto 17_if_true
    movl    $16514, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  18:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_22_if_false        #  23:     goto   22_if_false
    jmp     l_f2_20                 #  24:     goto   20
l_f2_22_if_false:
l_f2_20:
    jmp     l_f2_9                  #  27:     goto   9
l_f2_11_if_false:
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <ptr(4) to <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 61 of <array 33 of <array 72 of <array 25 of <array 24 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <ptr(4) to <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <ptr(4) to <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 93 of <array 81 of <array 8 of <array 84 of <array 43 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t4       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t5       <ptr(4) to <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t6       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <ptr(4) to <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <int> %ebp-128 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $116, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    call    dummyProcedure          #   3:     call   dummyProcedure
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    leal    v2, %eax                #   7:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #   9:     &()    t2 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  10:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  11:     &()    t3 <- v0
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  12:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  13:     call   t4 <- f2
    addl    $12, %esp              
    movl    %eax, -108(%ebp)       
    leal    v2, %eax                #  14:     &()    t5 <- v2
    movl    %eax, -112(%ebp)       
    movl    $24715, %eax            #  15:     mul    t6 <- 24715, 36401
    movl    $36401, %ebx           
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  16:     sub    t7 <- t6, 51028
    movl    $51028, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    leal    v2, %eax                #  18:     &()    t8 <- v2
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  19:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  21:     mul    t10 <- t7, t9
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t11 <- t10, 80599
    movl    $80599, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t12 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  26:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t14 <- t11, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t15 <- t14, 30330
    movl    $30330, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    leal    v2, %eax                #  30:     &()    t16 <- v2
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  31:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  32:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t18 <- t15, t17
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  34:     add    t19 <- t18, 71736
    movl    $71736, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    leal    v2, %eax                #  36:     &()    t20 <- v2
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  37:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  38:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -60(%ebp), %eax         #  39:     mul    t22 <- t19, t21
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     add    t23 <- t22, 75242
    movl    $75242, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  41:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    v2, %eax                #  42:     &()    t25 <- v2
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  43:     param  0 <- t25
    pushl   %eax                   
    call    DOFS                    #  44:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  45:     add    t27 <- t24, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -112(%ebp), %eax        #  46:     add    t28 <- t5, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $1, %eax                #  47:     assign @t28 <- 1
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $116, %esp              # remove locals
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
v0:                                 # <array 93 of <array 81 of <array 8 of <array 84 of <array 43 of <int>>>>>>
    .long    5
    .long   93
    .long   81
    .long    8
    .long   84
    .long   43
    .skip 870694272
v1:                                 # <array 61 of <array 33 of <array 72 of <array 25 of <array 24 of <int>>>>>>
    .long    5
    .long   61
    .long   33
    .long   72
    .long   25
    .long   24
    .skip 347846400
v2:                                 # <array 18 of <array 99 of <array 35 of <array 35 of <array 51 of <bool>>>>>>
    .long    5
    .long   18
    .long   99
    .long   35
    .long   35
    .long   51
    .skip 111330450
v3:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
