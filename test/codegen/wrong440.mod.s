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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    jmp     l_f0_4                  #   0:     goto   4
    jmp     l_f0_4                  #   1:     goto   4
    jmp     l_f0_1                  #   2:     goto   1
l_f0_4:
l_f0_1:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t0
    jmp     l_f0_exit              
l_f0_13_while_cond:
    jmp     l_f0_14_while_body      #  11:     goto   14_while_body
    jmp     l_f0_14_while_body      #  12:     goto   14_while_body
    jmp     l_f0_14_while_body      #  13:     goto   14_while_body
    jmp     l_f0_12                 #  14:     goto   12
l_f0_14_while_body:
    call    WriteLn                 #  16:     call   WriteLn
    jmp     l_f0_13_while_cond      #  17:     goto   13_while_cond
l_f0_12:
    call    dummyCHARfunc           #  19:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 6 of <array 7 of <array 3 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 6 of <array 8 of <array 7 of <char>>>>>>> %ebp+12 ]
    #    -34(%ebp)   1  [ $v3       <bool> %ebp-34 ]

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
    movl    $98, %eax               #   1:     if     98 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $47437, %eax            #   4:     if     47437 = 11322 goto 5
    movl    $11322, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   8:     goto   7
l_f1_6:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  12:     assign v3 <- t0
    movb    %al, -34(%ebp)         
    movl    $25347, %eax            #  13:     add    t1 <- 25347, 52986
    movl    $52986, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     sub    t2 <- t1, 60153
    movl    $60153, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  16:     goto   1_while_cond
l_f1_0:
    movl    $70371, %eax            #  18:     sub    t3 <- 70371, 57261
    movl    $57261, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     sub    t4 <- t3, 18837
    movl    $18837, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     return t4
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  21:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 6 of <array 6 of <array 8 of <array 7 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 6 of <array 7 of <array 3 of <array 5 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 3 of <array 9 of <array 4 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #   -6368(%ebp)  6324  [ $v5       <array 10 of <array 6 of <array 7 of <array 3 of <array 5 of <char>>>>>> %ebp-6368 ]
    #   -8408(%ebp)  2040  [ $v6       <array 1 of <array 6 of <array 6 of <array 8 of <array 7 of <char>>>>>> %ebp-8408 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8396, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2099, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6368(%ebp)          # local array 'v5': 5 dimensions
    movl    $10,-6364(%ebp)         #   dimension 1: 10 elements
    movl    $6,-6360(%ebp)          #   dimension 2: 6 elements
    movl    $7,-6356(%ebp)          #   dimension 3: 7 elements
    movl    $3,-6352(%ebp)          #   dimension 4: 3 elements
    movl    $5,-6348(%ebp)          #   dimension 5: 5 elements
    movl    $5,-8408(%ebp)          # local array 'v6': 5 dimensions
    movl    $1,-8404(%ebp)          #   dimension 1: 1 elements
    movl    $6,-8400(%ebp)          #   dimension 2: 6 elements
    movl    $6,-8396(%ebp)          #   dimension 3: 6 elements
    movl    $8,-8392(%ebp)          #   dimension 4: 8 elements
    movl    $7,-8388(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $52395, %eax            #   0:     add    t0 <- 52395, 19608
    movl    $19608, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 95246
    movl    $95246, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t1
    movl    %eax, 8(%ebp)          
    leal    -8408(%ebp), %eax       #   3:     &()    t2 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  1 <- t2
    pushl   %eax                   
    leal    -6368(%ebp), %eax       #   5:     &()    t3 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   7:     call   t4 <- f1
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $72766, %eax            #   8:     mul    t5 <- 72766, 15818
    movl    $15818, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     div    t6 <- t5, 22250
    movl    $22250, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     div    t7 <- t6, 74880
    movl    $74880, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8396, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    movl    $7368, %eax             #   2:     if     7368 <= 41348 goto 3_if_true
    movl    $41348, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_8_if_false       #   5:     goto   8_if_false
    jmp     l_test_6                #   6:     goto   6
l_test_8_if_false:
l_test_6:
l_test_10_while_cond:
    jmp     l_test_9                #  10:     goto   9
    jmp     l_test_10_while_cond    #  11:     goto   10_while_cond
l_test_9:
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_test_2                #  14:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
    jmp     l_test_15_if_true       #  18:     goto   15_if_true
    jmp     l_test_15_if_true       #  19:     goto   15_if_true
    jmp     l_test_15_if_true       #  20:     goto   15_if_true
l_test_15_if_true:
    jmp     l_test_14               #  22:     goto   14
l_test_14:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
