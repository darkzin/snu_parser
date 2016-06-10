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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 61 of <array 90 of <array 50 of <array 28 of <array 23 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $55201, %eax            #   3:     add    t6 <- 55201, 23313
    movl    $23313, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t7 <- t6, 20971
    movl    $20971, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t8 <- t7, 76621
    movl    $76621, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 49 of <array 68 of <array 86 of <array 70 of <array 97 of <bool>>>>>>> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    movl    $83434, %eax            #   2:     if     83434 = 91903 goto 3_while_body
    movl    $91903, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   5:     goto   2_while_cond
l_f1_1:
    movl    $99, %eax               #   7:     if     99 # 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   8:     goto   8_if_false
l_f1_7_if_true:
    movl    $80606, %eax            #  10:     assign v3 <- 80606
    movl    %eax, -20(%ebp)        
    jmp     l_f1_11                 #  11:     goto   11
l_f1_11:
l_f1_15_while_cond:
    jmp     l_f1_15_while_cond      #  14:     goto   15_while_cond
    jmp     l_f1_6                  #  15:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 49 of <array 68 of <array 86 of <array 70 of <array 97 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 86 of <array 39 of <array 42 of <array 69 of <array 89 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 35 of <array 44 of <array 76 of <array 48 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 91 of <array 32 of <array 88 of <array 69 of <array 54 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 39 of <array 70 of <array 38 of <array 61 of <array 93 of <int>>>>>>> %ebp+20 ]
    #    -25(%ebp)   1  [ $v4       <char> %ebp-25 ]
    #   -1945688132(%ebp)  1945688104  [ $v5       <array 49 of <array 68 of <array 86 of <array 70 of <array 97 of <bool>>>>>> %ebp-1945688132 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1945688120, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $486422030, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1945688132(%ebp)    # local array 'v5': 5 dimensions
    movl    $49,-1945688128(%ebp)   #   dimension 1: 49 elements
    movl    $68,-1945688124(%ebp)   #   dimension 2: 68 elements
    movl    $86,-1945688120(%ebp)   #   dimension 3: 86 elements
    movl    $70,-1945688116(%ebp)   #   dimension 4: 70 elements
    movl    $97,-1945688112(%ebp)   #   dimension 5: 97 elements

    # function body
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $98, %eax               #   2:     if     98 = 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    movl    $98, %eax               #   5:     assign v4 <- 98
    movb    %al, -25(%ebp)         
    movl    $83562, %eax            #   6:     if     83562 < 14994 goto 7_if_true
    movl    $14994, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   7:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_if_false:
l_f2_6:
    jmp     l_f2_2_while_cond       #  12:     goto   2_while_cond
l_f2_1:
    leal    -1945688132(%ebp), %eax #  14:     &()    t5 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  2 <- t5
    pushl   %eax                   
    movl    $99, %eax               #  16:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #  17:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  18:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  19:     call   t7 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $1945688120, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 49 of <array 68 of <array 86 of <array 70 of <array 97 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_test_exit            
    jmp     l_test_7                #   2:     goto   7
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   4:     goto   8
l_test_7:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #   8:     if     t0 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #   9:     goto   4_if_false
l_test_3_if_true:
l_test_11_while_cond:
    movl    $98, %eax               #  12:     if     98 > 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_12_while_body   
    jmp     l_test_10               #  13:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_10:
    jmp     l_test_exit            
    jmp     l_test_17_if_false      #  18:     goto   17_if_false
    jmp     l_test_15               #  19:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_2                #  22:     goto   2
l_test_4_if_false:
l_test_2:
    leal    v0, %eax                #  25:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  2 <- t1
    pushl   %eax                   
    movl    $98, %eax               #  27:     param  1 <- 98
    pushl   %eax                   
    call    dummyCHARfunc           #  28:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  29:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  30:     call   t3 <- f1
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  31:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  32:     if     t4 > 100 goto 20_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_20_if_true      
    jmp     l_test_21_if_false      #  33:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_exit            
    jmp     l_test_19               #  36:     goto   19
l_test_21_if_false:
l_test_19:

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
v0:                                 # <array 49 of <array 68 of <array 86 of <array 70 of <array 97 of <bool>>>>>>
    .long    5
    .long   49
    .long   68
    .long   86
    .long   70
    .long   97
    .skip 1945688080








    # end of global data section
    #-----------------------------------------

    .end
##################################################
