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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 9 of <array 8 of <array 2 of <int>>>>>>> %ebp+12 ]

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
    movl    $31413, %eax            #   0:     return 31413
    jmp     l_f0_exit              
    jmp     l_f0_4                  #   1:     goto   4
l_f0_4:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
    jmp     l_f0_12                 #   5:     goto   12
    jmp     l_f0_12                 #   6:     goto   12
    jmp     l_f0_8_if_true          #   7:     goto   8_if_true
l_f0_12:
    jmp     l_f0_8_if_true          #   9:     goto   8_if_true
l_f0_8_if_true:
    jmp     l_f0_7                  #  11:     goto   7
l_f0_7:
    call    ReadInt                 #  13:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t4 <- t3, 66018
    movl    $66018, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t5 <- t4, 17104
    movl    $17104, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t6 <- t5, 35602
    movl    $35602, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     return t6
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -57(%ebp)   1  [ $t21      <char> %ebp-57 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 2 of <array 9 of <array 7 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 1 of <array 8 of <array 3 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 6 of <array 2 of <char>>>>>>> %ebp+16 ]
    #    -93(%ebp)   1  [ $v3       <char> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $2094, %eax             #   1:     sub    t3 <- 2094, 25228
    movl    $25228, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   2:     sub    t4 <- t3, 79643
    movl    $79643, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   3:     if     t4 <= 17679 goto 2_while_body
    movl    $17679, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   8:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $37014, %eax            #   9:     mul    t6 <- 37014, t5
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  10:     add    t7 <- t6, 22512
    movl    $22512, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  14:     mul    t9 <- t7, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  15:     add    t10 <- t9, 13910
    movl    $13910, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  19:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t13 <- t12, 48819
    movl    $48819, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t16 <- t15, 78644
    movl    $78644, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  28:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  29:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  30:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $100, %eax              #  31:     assign @t20 <- 100
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_1_while_cond       #  32:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  34:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  35:     return t21
    jmp     l_f1_exit              
    movl    $41581, %eax            #  36:     if     41581 < 68235 goto 7_if_true
    movl    $68235, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  37:     goto   8_if_false
l_f1_7_if_true:
    movl    $98, %eax               #  39:     return 98
    jmp     l_f1_exit              
    movl    $98, %eax               #  40:     return 98
    jmp     l_f1_exit              
    call    ReadInt                 #  41:     call   t22 <- ReadInt
    movl    %eax, -64(%ebp)        
    movl    $98, %eax               #  42:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  43:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 6 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 1 of <array 8 of <array 3 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 2 of <array 9 of <array 7 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 8 of <array 6 of <array 1 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -12152(%ebp)  12120  [ $v3       <array 3 of <array 2 of <array 9 of <array 7 of <array 8 of <int>>>>>> %ebp-12152 ]
    #   -12848(%ebp)  696  [ $v4       <array 4 of <array 1 of <array 8 of <array 3 of <array 7 of <bool>>>>>> %ebp-12848 ]
    #   -14792(%ebp)  1944  [ $v5       <array 4 of <array 5 of <array 8 of <array 6 of <array 2 of <char>>>>>> %ebp-14792 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14780, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3695, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12152(%ebp)         # local array 'v3': 5 dimensions
    movl    $3,-12148(%ebp)         #   dimension 1: 3 elements
    movl    $2,-12144(%ebp)         #   dimension 2: 2 elements
    movl    $9,-12140(%ebp)         #   dimension 3: 9 elements
    movl    $7,-12136(%ebp)         #   dimension 4: 7 elements
    movl    $8,-12132(%ebp)         #   dimension 5: 8 elements
    movl    $5,-12848(%ebp)         # local array 'v4': 5 dimensions
    movl    $4,-12844(%ebp)         #   dimension 1: 4 elements
    movl    $1,-12840(%ebp)         #   dimension 2: 1 elements
    movl    $8,-12836(%ebp)         #   dimension 3: 8 elements
    movl    $3,-12832(%ebp)         #   dimension 4: 3 elements
    movl    $7,-12828(%ebp)         #   dimension 5: 7 elements
    movl    $5,-14792(%ebp)         # local array 'v5': 5 dimensions
    movl    $4,-14788(%ebp)         #   dimension 1: 4 elements
    movl    $5,-14784(%ebp)         #   dimension 2: 5 elements
    movl    $8,-14780(%ebp)         #   dimension 3: 8 elements
    movl    $6,-14776(%ebp)         #   dimension 4: 6 elements
    movl    $2,-14772(%ebp)         #   dimension 5: 2 elements

    # function body
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    leal    -14792(%ebp), %eax      #   7:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  2 <- t4
    pushl   %eax                   
    leal    -12848(%ebp), %eax      #   9:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  1 <- t5
    pushl   %eax                   
    leal    -12152(%ebp), %eax      #  11:     &()    t6 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  13:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $14780, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_9_while_cond:
    call    dummyBOOLfunc           #   5:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t0 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #   7:     goto   8
l_test_10_while_body:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
l_test_8:
    call    ReadInt                 #  12:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
