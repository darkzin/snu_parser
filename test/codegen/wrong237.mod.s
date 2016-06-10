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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v1       <bool> %ebp-19 ]

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
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $69256, %eax            #   2:     if     69256 < t4 goto 4_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   3:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   5:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_8_while_cond:
    call    dummyBOOLfunc           #  12:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $1, %eax                #  13:     if     1 = t5 goto 9_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_9_while_body      
    jmp     l_f0_7                  #  14:     goto   7
l_f0_9_while_body:
    movl    $44973, %eax            #  16:     if     44973 >= 38743 goto 12_if_true
    movl    $38743, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  17:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  19:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $96473, %eax            #  22:     if     96473 < 33942 goto 16
    movl    $33942, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_16                
    jmp     l_f0_17                 #  23:     goto   17
l_f0_16:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_18                 #  26:     goto   18
l_f0_17:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f0_18:
    movzbl  -18(%ebp), %eax         #  30:     assign v1 <- t6
    movb    %al, -19(%ebp)         
    jmp     l_f0_8_while_cond       #  31:     goto   8_while_cond
l_f0_7:
    movl    $97, %eax               #  33:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  34:     call   WriteChar
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
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    movl    $6565, %eax             #   0:     mul    t4 <- 6565, 83453
    movl    $83453, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 115
    movl    $115, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t5
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     return t6
    jmp     l_f1_exit              
    movl    $99, %eax               #   5:     return 99
    jmp     l_f1_exit              

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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 4 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 8 of <array 4 of <array 4 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    movl    $52186, %eax            #   0:     add    t4 <- 52186, 14834
    movl    $14834, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t4
    jmp     l_f2_exit              
    movl    $82679, %eax            #   2:     mul    t5 <- 82679, 25018
    movl    $25018, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t6 <- t5, 59502
    movl    $59502, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t6
    jmp     l_f2_exit              
    movl    $25195, %eax            #   5:     div    t7 <- 25195, 67213
    movl    $67213, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $63041, %eax            #   6:     sub    t8 <- 63041, t7
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     return t8
    jmp     l_f2_exit              

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    ReadInt                 #   4:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $76772, %eax            #   7:     if     76772 > 80063 goto 6
    movl    $80063, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6               
    jmp     l_test_7                #   8:     goto   7
l_test_6:
    movl    $1, %eax                #  10:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_8                #  11:     goto   8
l_test_7:
    movl    $0, %eax                #  13:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_8:
    movzbl  -17(%ebp), %eax         #  15:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_12_if_false      #  16:     goto   12_if_false
l_test_14_while_cond:
    jmp     l_test_13               #  18:     goto   13
    jmp     l_test_14_while_cond    #  19:     goto   14_while_cond
l_test_13:
    jmp     l_test_18_if_false      #  21:     goto   18_if_false
    jmp     l_test_16               #  22:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_10               #  25:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $98, %eax               #  28:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_exit            
l_test_22_while_cond:
    movl    $45691, %eax            #  31:     div    t2 <- 45691, 28785
    movl    $28785, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $40253, %eax            #  32:     if     40253 >= t2 goto 23_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_23_while_body   
    jmp     l_test_21               #  33:     goto   21
l_test_23_while_body:
    movl    $19756, %eax            #  35:     add    t3 <- 19756, 73126
    movl    $73126, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  37:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_22_while_cond    #  38:     goto   22_while_cond
l_test_21:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
