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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 1 of <array 5 of <array 8 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 4 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t8
    movb    %al, -14(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
    movl    $0, %eax                #   6:     assign v3 <- 0
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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 3 of <array 1 of <array 5 of <array 8 of <array 7 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 4 of <array 2 of <char>>>>>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 6 of <array 6 of <array 5 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 4 of <array 5 of <array 5 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -896(%ebp)  864  [ $v4       <array 3 of <array 1 of <array 5 of <array 8 of <array 7 of <bool>>>>>> %ebp-896 ]
    #   -1496(%ebp)  600  [ $v5       <array 8 of <array 9 of <array 1 of <array 4 of <array 2 of <char>>>>>> %ebp-1496 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1484, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $371, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-896(%ebp)           # local array 'v4': 5 dimensions
    movl    $3,-892(%ebp)           #   dimension 1: 3 elements
    movl    $1,-888(%ebp)           #   dimension 2: 1 elements
    movl    $5,-884(%ebp)           #   dimension 3: 5 elements
    movl    $8,-880(%ebp)           #   dimension 4: 8 elements
    movl    $7,-876(%ebp)           #   dimension 5: 7 elements
    movl    $5,-1496(%ebp)          # local array 'v5': 5 dimensions
    movl    $8,-1492(%ebp)          #   dimension 1: 8 elements
    movl    $9,-1488(%ebp)          #   dimension 2: 9 elements
    movl    $1,-1484(%ebp)          #   dimension 3: 1 elements
    movl    $4,-1480(%ebp)          #   dimension 4: 4 elements
    movl    $2,-1476(%ebp)          #   dimension 5: 2 elements

    # function body
    movl    $99115, %eax            #   0:     div    t8 <- 99115, 3311
    movl    $3311, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     param  2 <- t8
    pushl   %eax                   
    leal    -1496(%ebp), %eax       #   2:     &()    t9 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     param  1 <- t9
    pushl   %eax                   
    leal    -896(%ebp), %eax        #   4:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #   6:     call   f0
    addl    $12, %esp              
    call    ReadInt                 #   7:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   8:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $1484, %esp             # remove locals
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
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 5 of <array 5 of <array 4 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   1:     mul    t9 <- t8, 62193
    movl    $62193, %ebx           
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   2:     mul    t10 <- t9, 34314
    movl    $34314, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t11 <- t10, 10895
    movl    $10895, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     div    t12 <- t11, 65380
    movl    $65380, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     assign v1 <- t12
    movl    %eax, 12(%ebp)         
    movl    $65722, %eax            #   6:     sub    t13 <- 65722, 11986
    movl    $11986, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $83551, %eax            #   7:     sub    t14 <- 83551, 54572
    movl    $54572, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  11:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     add    t17 <- t16, 97518
    movl    $97518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  16:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  17:     add    t20 <- t19, 25097
    movl    $25097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  21:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  22:     add    t23 <- t22, 54781
    movl    $54781, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  26:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  27:     add    t26 <- t25, 64517
    movl    $64517, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  28:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  30:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  31:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t30 <- v0, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -28(%ebp), %eax         #  33:     assign @t30 <- t13
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_3_while_cond:
    movl    $84061, %eax            #  35:     sub    t31 <- 84061, 4886
    movl    $4886, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $34198, %eax            #  36:     if     34198 > t31 goto 4_while_body
    movl    -100(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jg      l_f2_4_while_body      
    jmp     l_f2_2                  #  37:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  39:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 2 of <array 4 of <array 5 of <array 5 of <array 6 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 6 of <array 6 of <array 5 of <array 6 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 4 of <array 5 of <array 5 of <array 6 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 6 of <array 6 of <array 5 of <array 6 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_test_2_while_cond:
    jmp     l_test_1                #   4:     goto   1
    jmp     l_test_exit            
    call    dummyProcedure          #   6:     call   dummyProcedure
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_8                #  10:     goto   8
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
    jmp     l_test_2_while_cond     #  13:     goto   2_while_cond
l_test_1:
    movl    $25012, %eax            #  15:     param  3 <- 25012
    pushl   %eax                   
    movl    $73639, %eax            #  16:     param  2 <- 73639
    pushl   %eax                   
    leal    v1, %eax                #  17:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  19:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  21:     call   t3 <- f1
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
l_test_13_while_cond:
    movl    $68139, %eax            #  23:     param  3 <- 68139
    pushl   %eax                   
    movl    $5921, %eax             #  24:     param  2 <- 5921
    pushl   %eax                   
    leal    v1, %eax                #  25:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     param  1 <- t4
    pushl   %eax                   
    leal    v0, %eax                #  27:     &()    t5 <- v0
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  29:     call   t6 <- f1
    addl    $16, %esp              
    movl    %eax, -40(%ebp)        
    movl    $23062, %eax            #  30:     mul    t7 <- 23062, t6
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $48474, %eax            #  31:     if     48474 <= t7 goto 14_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_14_while_body   
    jmp     l_test_12               #  32:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  34:     goto   13_while_cond
l_test_12:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <array 9 of <array 6 of <array 6 of <array 5 of <array 6 of <bool>>>>>>
    .long    5
    .long    9
    .long    6
    .long    6
    .long    5
    .long    6
    .skip 9720
v1:                                 # <array 2 of <array 4 of <array 5 of <array 5 of <array 6 of <bool>>>>>>
    .long    5
    .long    2
    .long    4
    .long    5
    .long    5
    .long    6
    .skip 1200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
