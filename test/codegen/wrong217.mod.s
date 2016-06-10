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
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 4 of <array 5 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 3 of <array 6 of <array 7 of <array 3 of <char>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_8_while_cond:
    jmp     l_f0_8_while_cond       #   7:     goto   8_while_cond
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    ReadInt                 #  11:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t10 <- t9, 42025
    movl    $42025, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     return t10
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 8 of <array 8 of <array 5 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 9 of <array 10 of <array 3 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 10 of <array 3 of <array 10 of <array 3 of <int>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v5       <char> %ebp-18 ]

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
    leal    _str_1, %eax            #   0:     &()    t8 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
    movl    $98, %eax               #   4:     assign v5 <- 98
    movb    %al, -18(%ebp)         
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #   8:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 4 of <array 9 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 6 of <array 7 of <array 10 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_5_if_true          #   1:     goto   5_if_true
    jmp     l_f2_5_if_true          #   2:     goto   5_if_true
l_f2_5_if_true:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_4:
    jmp     l_f2_1                  #   6:     goto   1
l_f2_1:
    movl    $97, %eax               #   8:     assign v4 <- 97
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 6 of <array 7 of <array 10 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 10 of <array 4 of <array 9 of <array 9 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 3 of <array 6 of <array 7 of <array 3 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 4 of <array 5 of <array 8 of <array 8 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <char> %ebp-37 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $97, %eax               #   2:     assign v0 <- 97
    movb    %al, v0                
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_4_while_cond:
    movl    $98, %eax               #   5:     if     98 >= 97 goto 5_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_5_while_body    
    jmp     l_test_3                #   6:     goto   3
l_test_5_while_body:
    movl    $98, %eax               #   8:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_4_while_cond     #   9:     goto   4_while_cond
l_test_3:
    leal    v4, %eax                #  11:     &()    t2 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  2 <- t2
    pushl   %eax                   
    leal    v3, %eax                #  13:     &()    t3 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  1 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  15:     &()    t4 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  2 <- t4
    pushl   %eax                   
    movl    $16064, %eax            #  17:     param  1 <- 16064
    pushl   %eax                   
    leal    v1, %eax                #  18:     &()    t5 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  20:     call   t6 <- f0
    addl    $12, %esp              
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  22:     call   t7 <- f2
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  23:     assign v0 <- t7
    movb    %al, v0                
    movl    $99, %eax               #  24:     assign v0 <- 99
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 9 of <array 4 of <array 5 of <array 8 of <array 8 of <int>>>>>>
    .long    5
    .long    9
    .long    4
    .long    5
    .long    8
    .long    8
    .skip 46080
v2:                                 # <array 7 of <array 3 of <array 6 of <array 7 of <array 3 of <char>>>>>>
    .long    5
    .long    7
    .long    3
    .long    6
    .long    7
    .long    3
    .skip 2646
    .align   4
v3:                                 # <array 5 of <array 10 of <array 4 of <array 9 of <array 9 of <int>>>>>>
    .long    5
    .long    5
    .long   10
    .long    4
    .long    9
    .long    9
    .skip 64800
v4:                                 # <array 1 of <array 6 of <array 7 of <array 10 of <array 7 of <bool>>>>>>
    .long    5
    .long    1
    .long    6
    .long    7
    .long   10
    .long    7
    .skip 2940








    # end of global data section
    #-----------------------------------------

    .end
##################################################
