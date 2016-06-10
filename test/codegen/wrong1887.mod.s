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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t11      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 61 of <array 53 of <array 92 of <array 68 of <array 40 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 77 of <array 9 of <array 36 of <array 79 of <char>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $9322, %eax             #   1:     add    t1 <- 9322, 59351
    movl    $59351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t2 <- t1, 58379
    movl    $58379, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $29102, %eax            #   3:     add    t3 <- 29102, 18440
    movl    $18440, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t4 <- t3, 10921
    movl    $10921, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     add    t5 <- t4, 72639
    movl    $72639, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     sub    t6 <- t5, 96798
    movl    $96798, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     add    t7 <- t6, 94737
    movl    $94737, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     sub    t8 <- t7, 58840
    movl    $58840, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   9:     add    t9 <- t8, 12109
    movl    $12109, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  10:     sub    t10 <- t9, 90358
    movl    $90358, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -28(%ebp), %eax         #  11:     if     t2 = t10 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_8                  #  16:     goto   8
    jmp     l_f0_5                  #  17:     goto   5
l_f0_8:
l_f0_5:
    movl    $1, %eax                #  20:     assign t11 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_7                  #  21:     goto   7
    movl    $0, %eax                #  22:     assign t11 <- 0
    movb    %al, -21(%ebp)         
l_f0_7:
    movzbl  -21(%ebp), %eax         #  24:     return t11
    jmp     l_f0_exit              
l_f0_14_while_cond:
    movl    $31651, %eax            #  26:     if     31651 = 77772 goto 15_while_body
    movl    $77772, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_15_while_body     
    jmp     l_f0_13                 #  27:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  29:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_17                 #  31:     goto   17
l_f0_17:
    jmp     l_f0_10                 #  33:     goto   10
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    jmp     l_f1_5                  #   0:     goto   5
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   2:     goto   6
l_f1_5:
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   6:     if     t1 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   7:     goto   2_if_false
l_f1_1_if_true:
    movl    $100, %eax              #   9:     assign v0 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $63124, %eax            #  13:     assign v1 <- 63124
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #  14:     assign v2 <- 0
    movb    %al, -21(%ebp)         
    jmp     l_f1_10                 #  15:     goto   10
l_f1_10:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 78 of <array 58 of <array 32 of <array 48 of <array 83 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     if     100 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #   6:     return 99
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $100, %eax              #   8:     if     100 <= 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_while_body:
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     return t1
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  13:     goto   7_while_cond
l_f2_6:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
