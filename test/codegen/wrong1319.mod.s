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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 66 of <array 33 of <array 6 of <array 87 of <array 90 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 55 of <array 59 of <array 89 of <array 78 of <array 44 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 78 of <array 94 of <array 69 of <array 60 of <array 79 of <char>>>>>>> %ebp+16 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $4243, %eax             #   0:     div    t6 <- 4243, 74338
    movl    $74338, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     div    t7 <- t6, 42374
    movl    $42374, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t8 <- t7, 26875
    movl    $26875, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $83157, %eax            #   3:     sub    t9 <- 83157, t8
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     assign v4 <- t9
    movl    %eax, -36(%ebp)        
l_f0_2_while_cond:
    jmp     l_f0_1                  #   6:     goto   1
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
    movl    $84428, %eax            #   9:     if     84428 >= 47798 goto 8_if_true
    movl    $47798, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  10:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_11                 #  12:     goto   11
l_f0_11:
    jmp     l_f0_7                  #  14:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_2_while_cond       #  17:     goto   2_while_cond
l_f0_1:
    call    dummyINTfunc            #  19:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_18                 #  20:     goto   18
l_f0_18:
l_f0_22_while_cond:
    movl    $99, %eax               #  23:     if     99 < 99 goto 23_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_23_while_body     
    jmp     l_f0_21                 #  24:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  26:     goto   22_while_cond
l_f0_21:
    jmp     l_f0_14                 #  28:     goto   14
l_f0_14:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 15 of <array 11 of <array 29 of <array 100 of <array 98 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -13(%ebp)   1  [ $v5       <char> %ebp-13 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_1_while_cond       #   2:     goto   1_while_cond
l_f1_0:
l_f1_7_while_cond:
    jmp     l_f1_6                  #   5:     goto   6
    movl    $100, %eax              #   6:     assign v5 <- 100
    movb    %al, -13(%ebp)         
    jmp     l_f1_7_while_cond       #   7:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_exit              

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
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 78 of <array 94 of <array 69 of <array 60 of <array 79 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 55 of <array 59 of <array 89 of <array 78 of <array 44 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 66 of <array 33 of <array 6 of <array 87 of <array 90 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 91 of <array 46 of <array 64 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 69 of <array 53 of <array 88 of <array 45 of <array 48 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -102322508(%ebp)  102322464  [ $v5       <array 66 of <array 33 of <array 6 of <array 87 of <array 90 of <char>>>>>> %ebp-102322508 ]
    #   -1093501292(%ebp)  991178784  [ $v6       <array 55 of <array 59 of <array 89 of <array 78 of <array 44 of <char>>>>>> %ebp-1093501292 ]
    #   803462060(%ebp)  -1896963352  [ $v7       <array 78 of <array 94 of <array 69 of <array 60 of <array 79 of <char>>>>>> %ebp+803462060 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-803462072, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-200865518, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-102322508(%ebp)     # local array 'v5': 5 dimensions
    movl    $66,-102322504(%ebp)    #   dimension 1: 66 elements
    movl    $33,-102322500(%ebp)    #   dimension 2: 33 elements
    movl    $6,-102322496(%ebp)     #   dimension 3: 6 elements
    movl    $87,-102322492(%ebp)    #   dimension 4: 87 elements
    movl    $90,-102322488(%ebp)    #   dimension 5: 90 elements
    movl    $5,-1093501292(%ebp)    # local array 'v6': 5 dimensions
    movl    $55,-1093501288(%ebp)   #   dimension 1: 55 elements
    movl    $59,-1093501284(%ebp)   #   dimension 2: 59 elements
    movl    $89,-1093501280(%ebp)   #   dimension 3: 89 elements
    movl    $78,-1093501276(%ebp)   #   dimension 4: 78 elements
    movl    $44,-1093501272(%ebp)   #   dimension 5: 44 elements
    movl    $5,803462060(%ebp)      # local array 'v7': 5 dimensions
    movl    $78,803462064(%ebp)     #   dimension 1: 78 elements
    movl    $94,803462068(%ebp)     #   dimension 2: 94 elements
    movl    $69,803462072(%ebp)     #   dimension 3: 69 elements
    movl    $60,803462076(%ebp)     #   dimension 4: 60 elements
    movl    $79,803462080(%ebp)     #   dimension 5: 79 elements

    # function body
    leal    803462060(%ebp), %eax   #   0:     &()    t6 <- v7
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     param  2 <- t6
    pushl   %eax                   
    leal    -1093501292(%ebp), %eax #   2:     &()    t7 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     param  1 <- t7
    pushl   %eax                   
    leal    -102322508(%ebp), %eax  #   4:     &()    t8 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #   6:     call   f0
    addl    $12, %esp              
    movl    $18088, %eax            #   7:     add    t9 <- 18088, 81129
    movl    $81129, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     add    t10 <- t9, 20654
    movl    $20654, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t11 <- t10, 26783
    movl    $26783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     return t11
    jmp     l_f2_exit              
    movl    $90144, %eax            #  11:     mul    t12 <- 90144, 79171
    movl    $79171, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t13 <- t12, 78300
    movl    $78300, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     return t13
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  14:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $-803462072, %esp       # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $48895, %eax            #   0:     sub    t0 <- 48895, 74747
    movl    $74747, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 98126
    movl    $98126, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 85708
    movl    $85708, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, v0               
    call    ReadInt                 #   4:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t4 <- t3, 86402
    movl    $86402, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     assign v0 <- t4
    movl    %eax, v0               
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    WriteChar               #   9:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_5_if_false       #  10:     goto   5_if_false
l_test_7_while_cond:
    movl    $1, %eax                #  12:     if     1 = 0 goto 8_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    movl    $34007, %eax            #  15:     assign v0 <- 34007
    movl    %eax, v0               
    jmp     l_test_7_while_cond     #  16:     goto   7_while_cond
l_test_6:
    jmp     l_test_3                #  18:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
