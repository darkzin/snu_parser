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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t8
    movl    %eax, -28(%ebp)        
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   5:     goto   6_while_cond
    movl    $56721, %eax            #   6:     return 56721
    jmp     l_f0_exit              
    movl    $32162, %eax            #   7:     return 32162
    jmp     l_f0_exit              
l_f0_11_while_cond:
    jmp     l_f0_10                 #   9:     goto   10
    jmp     l_f0_11_while_cond      #  10:     goto   11_while_cond
l_f0_10:
l_f0_14_while_cond:
    jmp     l_f0_13                 #  13:     goto   13
    jmp     l_f0_14_while_cond      #  14:     goto   14_while_cond
l_f0_13:
    movl    $43038, %eax            #  16:     return 43038
    jmp     l_f0_exit              
    call    ReadInt                 #  17:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f0_2                  #  18:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 21 of <array 93 of <array 67 of <array 53 of <array 61 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 39 of <array 68 of <array 21 of <array 69 of <int>>>>>>> %ebp+12 ]
    #    -23(%ebp)   1  [ $v2       <char> %ebp-23 ]

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
    call    ReadInt                 #   0:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   2:     assign v2 <- t8
    movb    %al, -23(%ebp)         
    call    dummyCHARfunc           #   3:     call   t9 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #   4:     if     97 # t9 goto 3
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_3                 
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_5                  #   8:     goto   5
l_f1_4:
    movl    $0, %eax                #  10:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_5:
    movzbl  -13(%ebp), %eax         #  12:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 20 of <array 57 of <array 22 of <array 42 of <array 64 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 93 of <array 44 of <array 64 of <array 67 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 42 of <array 18 of <array 11 of <array 28 of <array 14 of <char>>>>>>> %ebp+16 ]

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
    call    f0                      #   0:     call   t7 <- f0
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   2:     goto   3_while_body
    jmp     l_f2_3_while_body       #   3:     goto   3_while_body
    jmp     l_f2_3_while_body       #   4:     goto   3_while_body
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
    call    f0                      #   7:     call   t8 <- f0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     return t8
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 42 of <array 18 of <array 11 of <array 28 of <array 14 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 94 of <array 93 of <array 44 of <array 64 of <array 67 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 20 of <array 57 of <array 22 of <array 42 of <array 64 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]

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
    jmp     l_test_exit            
    jmp     l_test_7                #   1:     goto   7
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   3:     goto   8
l_test_7:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #   7:     if     t0 = 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #   8:     goto   3
l_test_2:
    movl    $1, %eax                #  10:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #  11:     goto   4
l_test_3:
    movl    $0, %eax                #  13:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #  15:     assign v0 <- t1
    movb    %al, v0                
    leal    v3, %eax                #  16:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  2 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  18:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  1 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  22:     call   t5 <- f2
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    call    dummyINTfunc            #  23:     call   t6 <- dummyINTfunc
    movl    %eax, -36(%ebp)        

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 20 of <array 57 of <array 22 of <array 42 of <array 64 of <char>>>>>>
    .long    5
    .long   20
    .long   57
    .long   22
    .long   42
    .long   64
    .skip 67415040
v2:                                 # <array 94 of <array 93 of <array 44 of <array 64 of <array 67 of <char>>>>>>
    .long    5
    .long   94
    .long   93
    .long   44
    .long   64
    .long   67
    .skip 1649370624
v3:                                 # <array 42 of <array 18 of <array 11 of <array 28 of <array 14 of <char>>>>>>
    .long    5
    .long   42
    .long   18
    .long   11
    .long   28
    .long   14
    .skip 3259872








    # end of global data section
    #-----------------------------------------

    .end
##################################################
