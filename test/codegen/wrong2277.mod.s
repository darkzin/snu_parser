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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v0       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $v1       <char> %ebp-20 ]

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
    movl    $1, %eax                #   0:     assign t9 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t9 <- 0
    movb    %al, -18(%ebp)         
l_f0_3:
    movzbl  -18(%ebp), %eax         #   4:     return t9
    jmp     l_f0_exit              
    movl    $28061, %eax            #   5:     if     28061 >= 56280 goto 7_if_true
    movl    $56280, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   6:     goto   8_if_false
l_f0_7_if_true:
    movl    $1, %eax                #   8:     assign v0 <- 1
    movb    %al, -19(%ebp)         
    movl    $100, %eax              #   9:     assign v1 <- 100
    movb    %al, -20(%ebp)         
    call    dummyINTfunc            #  10:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #  11:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_16                 #  12:     goto   16
    movl    $0, %eax                #  13:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_16:
    movzbl  -17(%ebp), %eax         #  15:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  16:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $98, %eax               #  19:     assign v1 <- 98
    movb    %al, -20(%ebp)         

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
    #    -13(%ebp)   1  [ $t9       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 82 of <array 43 of <array 1 of <array 69 of <array 20 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 3 of <array 82 of <array 97 of <array 92 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 79 of <array 56 of <array 75 of <array 46 of <array 60 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_11_while_cond:
    jmp     l_f1_12_while_body      #  13:     goto   12_while_body
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
l_f1_16_while_cond:
    call    dummyCHARfunc           #  19:     call   t9 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  20:     if     99 < t9 goto 17_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_17_while_body     
    jmp     l_f1_15                 #  21:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  23:     goto   16_while_cond
l_f1_15:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 34 of <array 3 of <array 82 of <array 97 of <array 92 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 82 of <array 43 of <array 1 of <array 69 of <array 20 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 79 of <array 56 of <array 75 of <array 46 of <array 60 of <bool>>>>>>> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 70 of <array 55 of <array 12 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 53 of <array 51 of <array 98 of <array 39 of <array 67 of <bool>>>>>>> %ebp+20 ]
    #   -4865936(%ebp)  4865904  [ $v4       <array 82 of <array 43 of <array 1 of <array 69 of <array 20 of <char>>>>>> %ebp-4865936 ]
    #   -79506296(%ebp)  74640360  [ $v5       <array 34 of <array 3 of <array 82 of <array 97 of <array 92 of <char>>>>>> %ebp-79506296 ]
    #   -995274320(%ebp)  915768024  [ $v6       <array 79 of <array 56 of <array 75 of <array 46 of <array 60 of <bool>>>>>> %ebp-995274320 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $995274308, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $248818577, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4865936(%ebp)       # local array 'v4': 5 dimensions
    movl    $82,-4865932(%ebp)      #   dimension 1: 82 elements
    movl    $43,-4865928(%ebp)      #   dimension 2: 43 elements
    movl    $1,-4865924(%ebp)       #   dimension 3: 1 elements
    movl    $69,-4865920(%ebp)      #   dimension 4: 69 elements
    movl    $20,-4865916(%ebp)      #   dimension 5: 20 elements
    movl    $5,-79506296(%ebp)      # local array 'v5': 5 dimensions
    movl    $34,-79506292(%ebp)     #   dimension 1: 34 elements
    movl    $3,-79506288(%ebp)      #   dimension 2: 3 elements
    movl    $82,-79506284(%ebp)     #   dimension 3: 82 elements
    movl    $97,-79506280(%ebp)     #   dimension 4: 97 elements
    movl    $92,-79506276(%ebp)     #   dimension 5: 92 elements
    movl    $5,-995274320(%ebp)     # local array 'v6': 5 dimensions
    movl    $79,-995274316(%ebp)    #   dimension 1: 79 elements
    movl    $56,-995274312(%ebp)    #   dimension 2: 56 elements
    movl    $75,-995274308(%ebp)    #   dimension 3: 75 elements
    movl    $46,-995274304(%ebp)    #   dimension 4: 46 elements
    movl    $60,-995274300(%ebp)    #   dimension 5: 60 elements

    # function body
    movl    $100, %eax              #   0:     if     100 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   4:     goto   4
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_4:
    leal    -995274320(%ebp), %eax  #   7:     &()    t9 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     param  2 <- t9
    pushl   %eax                   
    leal    -79506296(%ebp), %eax   #   9:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  1 <- t10
    pushl   %eax                   
    leal    -4865936(%ebp), %eax    #  11:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  13:     call   t12 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  14:     param  0 <- t12
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_0                  #  16:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_10_if_false        #  19:     goto   10_if_false
    jmp     l_f2_8                  #  20:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $29323, %eax            #  23:     sub    t13 <- 29323, 39867
    movl    $39867, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     assign v2 <- t13
    movl    %eax, 16(%ebp)         

l_f2_exit:
    # epilogue
    addl    $995274308, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 79 of <array 56 of <array 75 of <array 46 of <array 60 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 34 of <array 3 of <array 82 of <array 97 of <array 92 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 82 of <array 43 of <array 1 of <array 69 of <array 20 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 79 of <array 56 of <array 75 of <array 46 of <array 60 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 34 of <array 3 of <array 82 of <array 97 of <array 92 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 82 of <array 43 of <array 1 of <array 69 of <array 20 of <char>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    leal    v3, %eax                #   2:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t1
    pushl   %eax                   
    leal    v2, %eax                #   4:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #   6:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   8:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   9:     assign v0 <- t4
    movb    %al, v0                
l_test_4_while_cond:
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
    jmp     l_test_6                #  12:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $13933, %eax            #  15:     assign v4 <- 13933
    movl    %eax, v4               
    movl    $38408, %eax            #  16:     assign v4 <- 38408
    movl    %eax, v4               
    jmp     l_test_4_while_cond     #  17:     goto   4_while_cond
    leal    v3, %eax                #  18:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     param  2 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  20:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     param  1 <- t6
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t7 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  24:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -45(%ebp)         
    jmp     l_test_11               #  25:     goto   11
l_test_11:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 82 of <array 43 of <array 1 of <array 69 of <array 20 of <char>>>>>>
    .long    5
    .long   82
    .long   43
    .long    1
    .long   69
    .long   20
    .skip 4865880
v2:                                 # <array 34 of <array 3 of <array 82 of <array 97 of <array 92 of <char>>>>>>
    .long    5
    .long   34
    .long    3
    .long   82
    .long   97
    .long   92
    .skip 74640336
v3:                                 # <array 79 of <array 56 of <array 75 of <array 46 of <array 60 of <bool>>>>>>
    .long    5
    .long   79
    .long   56
    .long   75
    .long   46
    .long   60
    .skip 915768000
v4:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
