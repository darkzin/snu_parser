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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 8 of <array 9 of <array 2 of <array 10 of <bool>>>>>>> %ebp+20 ]

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
    jmp     l_f0_exit              
    movl    $28575, %eax            #   2:     mul    t7 <- 28575, 75595
    movl    $75595, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     assign v2 <- t7
    movl    %eax, 16(%ebp)         

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 2 of <array 9 of <array 6 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
l_f1_1_while_cond:
    movl    $1482, %eax             #   1:     mul    t7 <- 1482, 56425
    movl    $56425, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t8 <- t7, 62440
    movl    $62440, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t8 < 55770 goto 2_while_body
    movl    $55770, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   9:     call   t9 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 4 of <array 2 of <array 1 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 9 of <array 7 of <array 9 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $24010, %eax            #   2:     if     24010 >= 55287 goto 3_while_body
    movl    $55287, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    call    ReadInt                 #   5:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
l_f2_7_while_cond:
    call    dummyBOOLfunc           #   9:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  10:     if     t8 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  11:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  13:     goto   7_while_cond
l_f2_6:

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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <char> %ebp-30 ]

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
    movl    $100, %eax              #   0:     if     100 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #   7:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $27425, %eax            #   8:     sub    t2 <- 27425, 5815
    movl    $5815, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t3 <- t2, 70614
    movl    $70614, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     sub    t4 <- t3, 74260
    movl    $74260, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     if     t4 <= 57210 goto 7_if_true
    movl    $57210, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_7_if_true       
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_exit            
    movl    $100, %eax              #  15:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_6                #  16:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $0, %eax                #  19:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_16               #  20:     goto   16
l_test_16:
    call    dummyBOOLfunc           #  22:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #  23:     call   t6 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
l_test_22_while_cond:
    movl    $1, %eax                #  25:     if     1 = 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23_while_body   
    jmp     l_test_21               #  26:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  28:     goto   22_while_cond
l_test_21:
    jmp     l_test_12               #  30:     goto   12
l_test_12:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
