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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 1 of <array 5 of <array 4 of <array 2 of <int>>>>>>> %ebp+8 ]
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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   6:     goto   5
    jmp     l_f0_5                  #   7:     goto   5
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
l_f0_5:
    call    ReadInt                 #  10:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 9 of <array 6 of <array 7 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 5 of <array 8 of <array 9 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t5 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
    movl    $100, %eax              #   4:     assign v2 <- 100
    movb    %al, 16(%ebp)          
    movl    $0, %eax                #   5:     return 0
    jmp     l_f1_exit              
    call    dummyINTfunc            #   6:     call   t6 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   7:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $44730, %eax            #  11:     add    t8 <- 44730, 5947
    movl    $5947, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t9 <- t8, 36228
    movl    $36228, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     if     t9 # 89097 goto 9
    movl    $89097, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_9                 
    jmp     l_f1_10                 #  14:     goto   10
l_f1_9:
    movl    $1, %eax                #  16:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_11                 #  17:     goto   11
l_f1_10:
    movl    $0, %eax                #  19:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_11:
    movzbl  -13(%ebp), %eax         #  21:     return t10
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 5 of <array 8 of <array 9 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 9 of <array 6 of <array 7 of <array 7 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 6 of <array 4 of <array 7 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 6 of <array 10 of <array 3 of <int>>>>>>> %ebp+12 ]
    #   -42392(%ebp)  42360  [ $v2       <array 4 of <array 9 of <array 6 of <array 7 of <array 7 of <int>>>>>> %ebp-42392 ]
    #   -47456(%ebp)  5064  [ $v3       <array 2 of <array 5 of <array 8 of <array 9 of <array 7 of <char>>>>>> %ebp-47456 ]
    #   -47457(%ebp)   1  [ $v4       <bool> %ebp-47457 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $47448, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11862, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-42392(%ebp)         # local array 'v2': 5 dimensions
    movl    $4,-42388(%ebp)         #   dimension 1: 4 elements
    movl    $9,-42384(%ebp)         #   dimension 2: 9 elements
    movl    $6,-42380(%ebp)         #   dimension 3: 6 elements
    movl    $7,-42376(%ebp)         #   dimension 4: 7 elements
    movl    $7,-42372(%ebp)         #   dimension 5: 7 elements
    movl    $5,-47456(%ebp)         # local array 'v3': 5 dimensions
    movl    $2,-47452(%ebp)         #   dimension 1: 2 elements
    movl    $5,-47448(%ebp)         #   dimension 2: 5 elements
    movl    $8,-47444(%ebp)         #   dimension 3: 8 elements
    movl    $9,-47440(%ebp)         #   dimension 4: 9 elements
    movl    $7,-47436(%ebp)         #   dimension 5: 7 elements

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_f2_0                  #   1:     goto   0
l_f2_0:
    movl    $100, %eax              #   3:     param  2 <- 100
    pushl   %eax                   
    leal    -47456(%ebp), %eax      #   4:     &()    t5 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  1 <- t5
    pushl   %eax                   
    leal    -42392(%ebp), %eax      #   6:     &()    t6 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   8:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    call    ReadInt                 #   9:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    $66462, %eax            #  10:     if     66462 >= t8 goto 6
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f2_8:
    movzbl  -29(%ebp), %eax         #  18:     assign v4 <- t9
    movb    %al, -47457(%ebp)      

l_f2_exit:
    # epilogue
    addl    $47448, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 5 of <array 8 of <array 9 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 9 of <array 6 of <array 7 of <array 7 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $18375, %eax            #   1:     assign v0 <- 18375
    movl    %eax, v0               
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_11_if_false      #   6:     goto   11_if_false
    jmp     l_test_9                #   7:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_14_if_false      #  10:     goto   14_if_false
    jmp     l_test_12               #  11:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $98, %eax               #  14:     param  2 <- 98
    pushl   %eax                   
    leal    v2, %eax                #  15:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  17:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  19:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $100, %eax              #  20:     if     100 >= 97 goto 17_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_17_if_true      
    jmp     l_test_18_if_false      #  21:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  23:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_2                #  26:     goto   2
l_test_4_if_false:
l_test_2:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <array 4 of <array 9 of <array 6 of <array 7 of <array 7 of <int>>>>>>
    .long    5
    .long    4
    .long    9
    .long    6
    .long    7
    .long    7
    .skip 42336
v2:                                 # <array 2 of <array 5 of <array 8 of <array 9 of <array 7 of <char>>>>>>
    .long    5
    .long    2
    .long    5
    .long    8
    .long    9
    .long    7
    .skip 5040








    # end of global data section
    #-----------------------------------------

    .end
##################################################
