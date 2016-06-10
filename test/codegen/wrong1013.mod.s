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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, 12(%ebp)          
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 17 of <array 12 of <array 23 of <array 18 of <array 70 of <char>>>>>>> %ebp+8 ]
    #    -34(%ebp)   1  [ $v1       <bool> %ebp-34 ]

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
l_f1_1_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_2_while_body       #   4:     goto   2_while_body
l_f1_3:
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
    call    ReadInt                 #   8:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $54926, %eax            #   9:     div    t3 <- 54926, 22361
    movl    $22361, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t4 <- t3, 80811
    movl    $80811, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     div    t5 <- t4, 61468
    movl    $61468, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     div    t6 <- t5, 91702
    movl    $91702, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     if     t6 < 45718 goto 11
    movl    $45718, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_11                
    jmp     l_f1_12                 #  14:     goto   12
l_f1_11:
    movl    $1, %eax                #  16:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_13                 #  17:     goto   13
l_f1_12:
    movl    $0, %eax                #  19:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f1_13:
    movzbl  -33(%ebp), %eax         #  21:     assign v1 <- t7
    movb    %al, -34(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 87 of <array 73 of <array 97 of <array 24 of <array 21 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 45 of <array 69 of <array 78 of <array 28 of <array 98 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
    movl    $98, %eax               #   5:     if     98 > 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   6:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  12:     goto   2_while_cond
l_f2_1:
    movl    $69653, %eax            #  14:     if     69653 < 75877 goto 13_if_true
    movl    $75877, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  15:     goto   14_if_false
l_f2_13_if_true:
    movl    $58720, %eax            #  17:     if     58720 >= 14528 goto 17_if_true
    movl    $14528, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  18:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_if_false:
l_f2_16:
    call    dummyINTfunc            #  23:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_exit              
    jmp     l_f2_12                 #  25:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $25888, %eax            #   2:     sub    t1 <- 25888, 80477
    movl    $80477, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v0 <- t1
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
