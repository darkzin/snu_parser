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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t5
    jmp     l_f0_exit              
    leal    _str_1, %eax            #   3:     &()    t6 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 8 of <array 1 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 10 of <array 5 of <array 10 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $76966, %eax            #   4:     param  0 <- 76966
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    call    dummyINTfunc            #   6:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_7_while_cond:
    movl    $89958, %eax            #   8:     if     89958 <= 81020 goto 8_while_body
    movl    $81020, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_8_while_body      
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  11:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_1_while_cond       #  13:     goto   1_while_cond
l_f1_0:
    movl    $64782, %eax            #  15:     mul    t5 <- 64782, 66481
    movl    $66481, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t6 <- t5, 15597
    movl    $15597, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t7 <- t6, 69301
    movl    $69301, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     return t7
    jmp     l_f1_exit              
    call    dummyProcedure          #  19:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 10 of <array 5 of <array 10 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 4 of <array 8 of <array 1 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 8 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 10 of <array 4 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #   -46140(%ebp)  46104  [ $v2       <array 10 of <array 2 of <array 9 of <array 8 of <array 8 of <int>>>>>> %ebp-46140 ]
    #   -46836(%ebp)  696  [ $v3       <array 3 of <array 4 of <array 8 of <array 1 of <array 7 of <bool>>>>>> %ebp-46836 ]
    #   -74860(%ebp)  28024  [ $v4       <array 7 of <array 10 of <array 5 of <array 10 of <array 2 of <int>>>>>> %ebp-74860 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $74848, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18712, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-46140(%ebp)         # local array 'v2': 5 dimensions
    movl    $10,-46136(%ebp)        #   dimension 1: 10 elements
    movl    $2,-46132(%ebp)         #   dimension 2: 2 elements
    movl    $9,-46128(%ebp)         #   dimension 3: 9 elements
    movl    $8,-46124(%ebp)         #   dimension 4: 8 elements
    movl    $8,-46120(%ebp)         #   dimension 5: 8 elements
    movl    $5,-46836(%ebp)         # local array 'v3': 5 dimensions
    movl    $3,-46832(%ebp)         #   dimension 1: 3 elements
    movl    $4,-46828(%ebp)         #   dimension 2: 4 elements
    movl    $8,-46824(%ebp)         #   dimension 3: 8 elements
    movl    $1,-46820(%ebp)         #   dimension 4: 1 elements
    movl    $7,-46816(%ebp)         #   dimension 5: 7 elements
    movl    $5,-74860(%ebp)         # local array 'v4': 5 dimensions
    movl    $7,-74856(%ebp)         #   dimension 1: 7 elements
    movl    $10,-74852(%ebp)        #   dimension 2: 10 elements
    movl    $5,-74848(%ebp)         #   dimension 3: 5 elements
    movl    $10,-74844(%ebp)        #   dimension 4: 10 elements
    movl    $2,-74840(%ebp)         #   dimension 5: 2 elements

    # function body
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    movl    $87355, %eax            #   2:     return 87355
    jmp     l_f2_exit              
    jmp     l_f2_5                  #   3:     goto   5
l_f2_5:
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $77787, %eax            #   8:     param  3 <- 77787
    pushl   %eax                   
    leal    -74860(%ebp), %eax      #   9:     &()    t5 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t5
    pushl   %eax                   
    leal    -46836(%ebp), %eax      #  11:     &()    t6 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  1 <- t6
    pushl   %eax                   
    movl    $0, %eax                #  13:     param  1 <- 0
    pushl   %eax                   
    leal    -46140(%ebp), %eax      #  14:     &()    t7 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  16:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  17:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  18:     call   t9 <- f1
    addl    $16, %esp              
    movl    %eax, -36(%ebp)        

l_f2_exit:
    # epilogue
    addl    $74848, %esp            # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 7 of <array 10 of <array 4 of <array 5 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     assign v0 <- t1
    movb    %al, v0                
    leal    v1, %eax                #   3:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t2
    pushl   %eax                   
    movl    $97, %eax               #   5:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #   6:     call   t3 <- f2
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v1:                                 # <array 7 of <array 7 of <array 10 of <array 4 of <array 5 of <bool>>>>>>
    .long    5
    .long    7
    .long    7
    .long   10
    .long    4
    .long    5
    .skip 9800








    # end of global data section
    #-----------------------------------------

    .end
##################################################
