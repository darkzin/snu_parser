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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 7 of <array 5 of <array 8 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 >= 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    movl    $49506, %eax            #  11:     sub    t3 <- 49506, 78131
    movl    $78131, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t4 <- t3, 63520
    movl    $63520, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t5 <- t4, 56569
    movl    $56569, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t6 <- t5, 84577
    movl    $84577, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 7 of <array 5 of <array 8 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 7 of <array 5 of <array 8 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t7       <char> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 9 of <array 2 of <array 2 of <array 8 of <char>>>>>>> %ebp+16 ]
    #   -5932(%ebp)  5904  [ $v3       <array 3 of <array 7 of <array 5 of <array 8 of <array 7 of <bool>>>>>> %ebp-5932 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5920, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1480, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5932(%ebp)          # local array 'v3': 5 dimensions
    movl    $3,-5928(%ebp)          #   dimension 1: 3 elements
    movl    $7,-5924(%ebp)          #   dimension 2: 7 elements
    movl    $5,-5920(%ebp)          #   dimension 3: 5 elements
    movl    $8,-5916(%ebp)          #   dimension 4: 8 elements
    movl    $7,-5912(%ebp)          #   dimension 5: 7 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
l_f1_6_while_cond:
    movl    $98, %eax               #   6:     if     98 > 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    movl    $97, %eax               #  13:     param  3 <- 97
    pushl   %eax                   
    leal    -5932(%ebp), %eax       #  14:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  2 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  16:     param  3 <- 97
    pushl   %eax                   
    leal    -5932(%ebp), %eax       #  17:     &()    t3 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  2 <- t3
    pushl   %eax                   
    movl    $97, %eax               #  19:     param  1 <- 97
    pushl   %eax                   
    movl    $98, %eax               #  20:     if     98 = 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  21:     goto   11
l_f1_10:
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_12                 #  24:     goto   12
l_f1_11:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f1_12:
    movzbl  -25(%ebp), %eax         #  28:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  29:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  30:     param  1 <- t5
    pushl   %eax                   
    movl    $7603, %eax             #  31:     if     7603 >= 84536 goto 14
    movl    $84536, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_14                
    jmp     l_f1_15                 #  32:     goto   15
l_f1_14:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f1_16                 #  35:     goto   16
l_f1_15:
    movl    $0, %eax                #  37:     assign t6 <- 0
    movb    %al, -27(%ebp)         
l_f1_16:
    movzbl  -27(%ebp), %eax         #  39:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  40:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -28(%ebp)         
    movzbl  -28(%ebp), %eax         #  41:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $5920, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 1 of <array 6 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $69646, %eax            #   1:     assign v2 <- 69646
    movl    %eax, -20(%ebp)        
l_f2_6_while_cond:
    movl    $97482, %eax            #   3:     if     97482 < 99274 goto 7_while_body
    movl    $99274, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #   4:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_1                  #   8:     goto   1
l_f2_1:
    movl    $99, %eax               #  10:     if     99 <= 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_10                
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  14:     goto   12
l_f2_11:
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movzbl  -14(%ebp), %eax         #  18:     return t2
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   3:     assign v0 <- 97
    movb    %al, v0                
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, v1                
l_test_7_while_cond:
    jmp     l_test_6                #   6:     goto   6
    jmp     l_test_7_while_cond     #   7:     goto   7_while_cond
l_test_6:
    jmp     l_test_1                #   9:     goto   1
l_test_1:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
