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
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 >= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_5                  #   5:     goto   5
l_f0_5:
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyProcedure          #  10:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 96 of <array 18 of <array 5 of <array 63 of <array 16 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   2:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_exit              
    movl    $59975, %eax            #   7:     add    t2 <- 59975, 859
    movl    $859, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t3 <- t2, 77134
    movl    $77134, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t4 <- t3, 23636
    movl    $23636, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     sub    t5 <- t4, 51665
    movl    $51665, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     sub    t6 <- t5, 87701
    movl    $87701, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 9 of <array 52 of <array 62 of <array 85 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 54 of <array 28 of <array 80 of <array 51 of <char>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_5_while_cond:
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_5_while_cond       #   3:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_9_if_false         #   5:     goto   9_if_false
    jmp     l_f2_7                  #   6:     goto   7
l_f2_9_if_false:
l_f2_7:
    movl    $1, %eax                #   9:     if     1 = 0 goto 11_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  10:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  12:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_1                  #  15:     goto   1
l_f2_1:
    jmp     l_f2_16                 #  17:     goto   16
    jmp     l_f2_16                 #  18:     goto   16
    movl    $1, %eax                #  19:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_17                 #  20:     goto   17
l_f2_16:
    movl    $0, %eax                #  22:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_17:
    movzbl  -14(%ebp), %eax         #  24:     return t2
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    movl    $50853, %eax            #   0:     if     50853 <= 93651 goto 1_if_true
    movl    $93651, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $98, %eax               #   3:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $54220, %eax            #   8:     if     54220 <= 49301 goto 7_if_true
    movl    $49301, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_7_if_true       
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
    leal    _str_1, %eax            #  11:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_6                #  16:     goto   6
l_test_8_if_false:
l_test_6:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
