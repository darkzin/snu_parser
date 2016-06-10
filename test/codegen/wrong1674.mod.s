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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    jmp     l_f0_4                  #   0:     goto   4
    jmp     l_f0_1                  #   1:     goto   1
l_f0_4:
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #  10:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  11:     goto   8
    jmp     l_f0_9                  #  12:     goto   9
l_f0_8:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_10                 #  15:     goto   10
l_f0_9:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_10:
    movzbl  -14(%ebp), %eax         #  19:     assign v0 <- t3
    movb    %al, 8(%ebp)           
l_f0_15_while_cond:
    movl    $71673, %eax            #  21:     if     71673 # 62518 goto 16_while_body
    movl    $62518, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_16_while_body     
    jmp     l_f0_14                 #  22:     goto   14
l_f0_16_while_body:
    movl    $1, %eax                #  24:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_15_while_cond      #  25:     goto   15_while_cond
l_f0_14:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 29 of <array 79 of <array 9 of <array 47 of <array 71 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 14 of <array 40 of <array 51 of <array 91 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    movl    $97, %eax               #   0:     if     97 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #   7:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $8848, %eax             #   8:     assign v1 <- 8848
    movl    %eax, 12(%ebp)         
l_f1_11_while_cond:
    movl    $100, %eax              #  10:     if     100 > 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_12_while_body     
    jmp     l_f1_10                 #  11:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
    movl    $99, %eax               #  15:     if     99 < 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  16:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  18:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_6                  #  21:     goto   6
l_f1_6:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t9       <bool> %ebp-38 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 27 of <array 40 of <array 66 of <array 39 of <array 26 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 60 of <array 52 of <array 26 of <array 28 of <array 58 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 75 of <array 13 of <array 4 of <array 37 of <array 49 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 53 of <array 47 of <array 19 of <array 38 of <array 87 of <bool>>>>>>> %ebp+20 ]
    #    -39(%ebp)   1  [ $v4       <bool> %ebp-39 ]

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
    movl    $51758, %eax            #   0:     sub    t2 <- 51758, 26826
    movl    $26826, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t3 <- t2, 2666
    movl    $2666, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t4 <- t3, 79767
    movl    $79767, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t5 <- t4, 6009
    movl    $6009, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     if     t5 <= 82057 goto 1
    movl    $82057, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   5:     goto   2
l_f2_1:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f2_3:
    movzbl  -29(%ebp), %eax         #  12:     assign v4 <- t6
    movb    %al, -39(%ebp)         
    call    ReadInt                 #  13:     call   t7 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $86997, %eax            #  14:     param  3 <- 86997
    pushl   %eax                   
    movl    $39498, %eax            #  15:     param  2 <- 39498
    pushl   %eax                   
    call    dummyCHARfunc           #  16:     call   t8 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  17:     param  1 <- t8
    pushl   %eax                   
    movl    $1, %eax                #  18:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  19:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -38(%ebp)         

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   5:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #   6:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
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

    # scope: test
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
