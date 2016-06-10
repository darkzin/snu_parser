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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    movl    $89946, %eax            #   0:     div    t6 <- 89946, 82757
    movl    $82757, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t7 <- t6, 62447
    movl    $62447, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t8 <- t7, 83397
    movl    $83397, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_5_while_cond:
    jmp     l_f0_4                  #   6:     goto   4
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    movl    $67701, %eax            #   9:     assign v1 <- 67701
    movl    %eax, -28(%ebp)        
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $34991, %eax            #  13:     assign v1 <- 34991
    movl    %eax, -28(%ebp)        

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 28 of <array 67 of <array 85 of <array 70 of <array 96 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 95 of <array 64 of <array 72 of <array 29 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 87 of <array 94 of <array 58 of <array 39 of <array 75 of <bool>>>>>>> %ebp+20 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v5       <int> %ebp-28 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_1_if_true          #   2:     goto   1_if_true
l_f1_1_if_true:
    movl    $64699, %eax            #   4:     if     64699 >= 74966 goto 7_if_true
    movl    $74966, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   5:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   7:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_0:
    movl    $94896, %eax            #  12:     if     94896 >= 99806 goto 11
    movl    $99806, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11                
    jmp     l_f1_12                 #  13:     goto   12
l_f1_11:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_13                 #  16:     goto   13
l_f1_12:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_13:
    movzbl  -13(%ebp), %eax         #  20:     assign v4 <- t6
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  21:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  22:     call   t7 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     assign v5 <- t7
    movl    %eax, -28(%ebp)        

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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 87 of <array 94 of <array 58 of <array 39 of <array 75 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 95 of <array 95 of <array 64 of <array 72 of <array 29 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 28 of <array 67 of <array 85 of <array 70 of <array 96 of <int>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <char> %ebp-45 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 51 of <array 86 of <array 90 of <array 61 of <array 28 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 99 of <array 72 of <array 56 of <array 97 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 7 of <array 100 of <array 76 of <array 59 of <int>>>>>>> %ebp+20 ]
    #   8682424(%ebp)  -8682472  [ $v4       <array 28 of <array 67 of <array 85 of <array 70 of <array 96 of <int>>>>>> %ebp+8682424 ]
    #   -520465504(%ebp)  529147928  [ $v5       <array 95 of <array 95 of <array 64 of <array 72 of <array 29 of <int>>>>>> %ebp-520465504 ]
    #   -1907863228(%ebp)  1387397724  [ $v6       <array 87 of <array 94 of <array 58 of <array 39 of <array 75 of <bool>>>>>> %ebp-1907863228 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1907863216, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $476965804, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,8682424(%ebp)        # local array 'v4': 5 dimensions
    movl    $28,8682428(%ebp)       #   dimension 1: 28 elements
    movl    $67,8682432(%ebp)       #   dimension 2: 67 elements
    movl    $85,8682436(%ebp)       #   dimension 3: 85 elements
    movl    $70,8682440(%ebp)       #   dimension 4: 70 elements
    movl    $96,8682444(%ebp)       #   dimension 5: 96 elements
    movl    $5,-520465504(%ebp)     # local array 'v5': 5 dimensions
    movl    $95,-520465500(%ebp)    #   dimension 1: 95 elements
    movl    $95,-520465496(%ebp)    #   dimension 2: 95 elements
    movl    $64,-520465492(%ebp)    #   dimension 3: 64 elements
    movl    $72,-520465488(%ebp)    #   dimension 4: 72 elements
    movl    $29,-520465484(%ebp)    #   dimension 5: 29 elements
    movl    $5,-1907863228(%ebp)    # local array 'v6': 5 dimensions
    movl    $87,-1907863224(%ebp)   #   dimension 1: 87 elements
    movl    $94,-1907863220(%ebp)   #   dimension 2: 94 elements
    movl    $58,-1907863216(%ebp)   #   dimension 3: 58 elements
    movl    $39,-1907863212(%ebp)   #   dimension 4: 39 elements
    movl    $75,-1907863208(%ebp)   #   dimension 5: 75 elements

    # function body
l_f2_1_while_cond:
    leal    -1907863228(%ebp), %eax #   1:     &()    t6 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     param  3 <- t6
    pushl   %eax                   
    leal    -520465504(%ebp), %eax  #   3:     &()    t7 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     param  2 <- t7
    pushl   %eax                   
    leal    8682424(%ebp), %eax     #   5:     &()    t8 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     param  1 <- t8
    pushl   %eax                   
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #   8:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #   9:     call   t10 <- f1
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  10:     if     97 >= t10 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    call    ReadInt                 #  16:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     if     t11 < 17883 goto 6_while_body
    movl    $17883, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_while_body      
    jmp     l_f2_4                  #  18:     goto   4
l_f2_6_while_body:
    movl    $98, %eax               #  20:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  21:     goto   9
l_f2_9:
    movl    $99431, %eax            #  23:     if     99431 <= 36107 goto 13_if_true
    movl    $36107, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  24:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  26:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_5_while_cond       #  29:     goto   5_while_cond
l_f2_4:
    movl    $19758, %eax            #  31:     div    t12 <- 19758, 24768
    movl    $24768, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     div    t13 <- t12, 11631
    movl    $11631, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     mul    t14 <- t13, 25066
    movl    $25066, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     if     t14 <= 99524 goto 17_if_true
    movl    $99524, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  35:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  37:     goto   16
l_f2_18_if_false:
l_f2_16:

l_f2_exit:
    # epilogue
    addl    $1907863216, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 3 of <array 7 of <array 100 of <array 76 of <array 59 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 86 of <array 99 of <array 72 of <array 56 of <array 97 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 51 of <array 86 of <array 90 of <array 61 of <array 28 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    leal    v3, %eax                #   2:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  3 <- t1
    pushl   %eax                   
    movl    $97, %eax               #   4:     param  2 <- 97
    pushl   %eax                   
    leal    v2, %eax                #   5:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #   7:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #   9:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <array 51 of <array 86 of <array 90 of <array 61 of <array 28 of <int>>>>>>
    .long    5
    .long   51
    .long   86
    .long   90
    .long   61
    .long   28
    .skip -1598103616
v2:                                 # <array 86 of <array 99 of <array 72 of <array 56 of <array 97 of <char>>>>>>
    .long    5
    .long   86
    .long   99
    .long   72
    .long   56
    .long   97
    .skip -965107840
v3:                                 # <array 3 of <array 7 of <array 100 of <array 76 of <array 59 of <int>>>>>>
    .long    5
    .long    3
    .long    7
    .long  100
    .long   76
    .long   59
    .skip 37665600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
