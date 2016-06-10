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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 8 of <array 8 of <array 7 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 7 of <array 8 of <array 4 of <array 1 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $75293, %eax            #   0:     sub    t9 <- 75293, 95707
    movl    $95707, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   1:     add    t10 <- t9, 63065
    movl    $63065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t11 <- t10, 71746
    movl    $71746, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t11
    jmp     l_f0_exit              
    call    ReadInt                 #   4:     call   t12 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t13 <- t12, 77671
    movl    $77671, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     sub    t14 <- t13, 34640
    movl    $34640, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     return t14
    jmp     l_f0_exit              
    call    ReadInt                 #   8:     call   t15 <- ReadInt
    movl    %eax, -36(%ebp)        

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     return 0
    jmp     l_f1_exit              
    movl    $1, %eax                #   2:     if     1 # 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_10                 #  11:     goto   10
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_10                 #  13:     goto   10
    movl    $1, %eax                #  14:     assign t9 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_11                 #  15:     goto   11
l_f1_10:
    movl    $0, %eax                #  17:     assign t9 <- 0
    movb    %al, -14(%ebp)         
l_f1_11:
    movzbl  -14(%ebp), %eax         #  19:     return t9
    jmp     l_f1_exit              
    movl    $48671, %eax            #  20:     if     48671 = 23377 goto 19_if_true
    movl    $23377, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  21:     goto   20_if_false
l_f1_19_if_true:
l_f1_23_while_cond:
    jmp     l_f1_23_while_cond      #  24:     goto   23_while_cond
    movl    $0, %eax                #  25:     return 0
    jmp     l_f1_exit              
    movl    $99, %eax               #  26:     if     99 = 98 goto 27
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_27                
    jmp     l_f1_28                 #  27:     goto   28
l_f1_27:
    movl    $1, %eax                #  29:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_29                 #  30:     goto   29
l_f1_28:
    movl    $0, %eax                #  32:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_29:
    movzbl  -13(%ebp), %eax         #  34:     return t10
    jmp     l_f1_exit              
    jmp     l_f1_31                 #  35:     goto   31
l_f1_31:
    movl    $1, %eax                #  37:     if     1 # 1 goto 35_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_35_if_true        
    jmp     l_f1_36_if_false        #  38:     goto   36_if_false
l_f1_35_if_true:
    jmp     l_f1_34                 #  40:     goto   34
l_f1_36_if_false:
l_f1_34:
    jmp     l_f1_18                 #  43:     goto   18
l_f1_20_if_false:
l_f1_18:

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
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t9       <char> %ebp-93 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 5 of <array 10 of <array 4 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 6 of <array 1 of <array 8 of <array 8 of <char>>>>>>> %ebp+16 ]
    #   -100(%ebp)   4  [ $v3       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movzbl  -93(%ebp), %eax         #   1:     return t9
    jmp     l_f2_exit              
    movl    $97, %eax               #   2:     return 97
    jmp     l_f2_exit              
    movl    $36226, %eax            #   3:     div    t10 <- 36226, 72102
    movl    $72102, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     mul    t11 <- t10, 17109
    movl    $17109, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $15450, %eax            #   8:     mul    t13 <- 15450, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     add    t14 <- t13, 62202
    movl    $62202, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  13:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $87151, %eax            #  14:     sub    t17 <- 87151, 99790
    movl    $99790, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     add    t18 <- t17, 65186
    movl    $65186, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  16:     add    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  20:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     add    t22 <- t21, 57050
    movl    $57050, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  25:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  26:     add    t25 <- t24, 28690
    movl    $28690, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  27:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  28:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  29:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  30:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  31:     add    t29 <- v1, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -20(%ebp), %eax         #  32:     assign @t29 <- t11
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 7 of <array 8 of <array 4 of <array 1 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 8 of <array 8 of <array 7 of <array 6 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 7 of <array 8 of <array 4 of <array 1 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <array 8 of <array 8 of <array 7 of <array 6 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_3_while_cond:
    jmp     l_test_2                #   3:     goto   2
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #   5:     goto   3_while_cond
l_test_2:
l_test_7_while_cond:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   9:     if     99 > t1 goto 8_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_8_while_body    
    jmp     l_test_6                #  10:     goto   6
l_test_8_while_body:
    leal    v1, %eax                #  12:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  14:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  16:     call   t4 <- f0
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    call    dummyBOOLfunc           #  17:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
    leal    v1, %eax                #  20:     &()    t6 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     param  1 <- t6
    pushl   %eax                   
    leal    v0, %eax                #  22:     &()    t7 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  24:     call   t8 <- f0
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v0:                                 # <array 5 of <array 8 of <array 8 of <array 7 of <array 6 of <int>>>>>>
    .long    5
    .long    5
    .long    8
    .long    8
    .long    7
    .long    6
    .skip 53760
v1:                                 # <array 3 of <array 7 of <array 8 of <array 4 of <array 1 of <bool>>>>>>
    .long    5
    .long    3
    .long    7
    .long    8
    .long    4
    .long    1
    .skip  672








    # end of global data section
    #-----------------------------------------

    .end
##################################################
