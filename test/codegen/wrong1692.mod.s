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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   4:     if     97 > 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $58200, %eax            #  10:     if     58200 >= 78606 goto 9
    movl    $78606, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9                 
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $0, %eax                #  16:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  18:     return t6
    jmp     l_f0_exit              
l_f0_14_while_cond:
    jmp     l_f0_13                 #  20:     goto   13
    jmp     l_f0_14_while_cond      #  21:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_1_while_cond       #  23:     goto   1_while_cond
l_f0_0:
    movl    $56589, %eax            #  25:     mul    t7 <- 56589, 99340
    movl    $99340, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t8 <- t7, 4660
    movl    $4660, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     assign v1 <- t8
    movl    %eax, -32(%ebp)        
    call    dummyBOOLfunc           #  28:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 21 of <array 66 of <array 30 of <array 97 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 28 of <array 19 of <array 64 of <array 66 of <array 7 of <int>>>>>>> %ebp+16 ]
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
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    movl    $63623, %eax            #   9:     assign v3 <- 63623
    movl    %eax, -20(%ebp)        
l_f1_7_while_cond:
    movl    $98, %eax               #  11:     if     98 = 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_8_while_body      
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  14:     goto   7_while_cond
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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 18 of <array 10 of <array 72 of <array 88 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $1, %eax                #   0:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #   1:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t7
    jmp     l_f2_exit              
l_f2_3_while_cond:
l_f2_6_while_cond:
    call    ReadInt                 #   6:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
    jmp     l_f2_3_while_cond       #   8:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

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
    movl    $100, %eax              #   0:     if     100 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    ReadInt                 #   3:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_exit            
    movl    $31473, %eax            #  12:     sub    t3 <- 31473, 6015
    movl    $6015, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     sub    t4 <- t3, 72499
    movl    $72499, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     sub    t5 <- t4, 3806
    movl    $3806, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     assign v0 <- t5
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
