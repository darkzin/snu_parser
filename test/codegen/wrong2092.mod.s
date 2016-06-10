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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 89 of <array 86 of <array 63 of <array 32 of <char>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     return t8
    jmp     l_f0_exit              
    movl    $55189, %eax            #   2:     sub    t9 <- 55189, 56507
    movl    $56507, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v3 <- t9
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   4:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     return t10
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <ptr(4) to <array 4 of <array 89 of <array 86 of <array 63 of <array 32 of <char>>>>>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 46 of <array 9 of <array 25 of <array 67 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 63 of <array 98 of <array 54 of <array 79 of <bool>>>>>>> %ebp+12 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]
    #   -61721908(%ebp)  61721880  [ $v4       <array 4 of <array 89 of <array 86 of <array 63 of <array 32 of <char>>>>>> %ebp-61721908 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $61721896, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $15430474, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-61721908(%ebp)      # local array 'v4': 5 dimensions
    movl    $4,-61721904(%ebp)      #   dimension 1: 4 elements
    movl    $89,-61721900(%ebp)     #   dimension 2: 89 elements
    movl    $86,-61721896(%ebp)     #   dimension 3: 86 elements
    movl    $63,-61721892(%ebp)     #   dimension 4: 63 elements
    movl    $32,-61721888(%ebp)     #   dimension 5: 32 elements

    # function body
    leal    _str_1, %eax            #   0:     &()    t8 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    leal    -61721908(%ebp), %eax   #   3:     &()    t9 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  1 <- t9
    pushl   %eax                   
    call    dummyCHARfunc           #   5:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #   7:     call   t11 <- f0
    addl    $8, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     assign v3 <- t11
    movb    %al, -25(%ebp)         
    call    dummyProcedure          #   9:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $61721896, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    movl    $87267, %eax            #   0:     sub    t8 <- 87267, 40934
    movl    $40934, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     return t8
    jmp     l_f2_exit              
    call    dummyINTfunc            #   2:     call   t9 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     add    t10 <- t9, 70163
    movl    $70163, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     add    t11 <- t10, 78755
    movl    $78755, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     return t11
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   6:     call   t12 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   5:     goto   2_while_cond
    movl    $17296, %eax            #   6:     div    t1 <- 17296, 54082
    movl    $54082, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     mul    t2 <- t1, 28810
    movl    $28810, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     div    t3 <- t2, 56428
    movl    $56428, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     assign v0 <- t3
    movl    %eax, v0               
l_test_9_while_cond:
    movl    $86597, %eax            #  11:     add    t4 <- 86597, 12098
    movl    $12098, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     sub    t5 <- t4, 12945
    movl    $12945, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     sub    t6 <- t5, 27115
    movl    $27115, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $34982, %eax            #  14:     sub    t7 <- 34982, 25119
    movl    $25119, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  15:     if     t6 > t7 goto 10_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  16:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  18:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            
    call    dummyProcedure          #  21:     call   dummyProcedure
    movl    $83432, %eax            #  22:     if     83432 >= 16566 goto 18_if_true
    movl    $16566, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  23:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  25:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $73939, %eax            #  28:     assign v0 <- 73939
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $71691, %eax            #  30:     if     71691 >= 9143 goto 24_if_true
    movl    $9143, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  31:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  33:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_exit            
    jmp     l_test_13               #  37:     goto   13
l_test_13:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
