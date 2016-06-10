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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 2 of <array 4 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 6 of <array 7 of <array 5 of <array 10 of <int>>>>>>> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <bool> %ebp-13 ]

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
    movl    $97, %eax               #   1:     return 97
    jmp     l_f0_exit              
    movl    $1, %eax                #   2:     assign v3 <- 1
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 6 of <array 7 of <array 5 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 5 of <array 2 of <array 4 of <array 7 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -4528(%ebp)  4504  [ $v1       <array 4 of <array 5 of <array 2 of <array 4 of <array 7 of <int>>>>>> %ebp-4528 ]
    #   -38152(%ebp)  33624  [ $v2       <array 4 of <array 6 of <array 7 of <array 5 of <array 10 of <int>>>>>> %ebp-38152 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $38140, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9535, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4528(%ebp)          # local array 'v1': 5 dimensions
    movl    $4,-4524(%ebp)          #   dimension 1: 4 elements
    movl    $5,-4520(%ebp)          #   dimension 2: 5 elements
    movl    $2,-4516(%ebp)          #   dimension 3: 2 elements
    movl    $4,-4512(%ebp)          #   dimension 4: 4 elements
    movl    $7,-4508(%ebp)          #   dimension 5: 7 elements
    movl    $5,-38152(%ebp)         # local array 'v2': 5 dimensions
    movl    $4,-38148(%ebp)         #   dimension 1: 4 elements
    movl    $6,-38144(%ebp)         #   dimension 2: 6 elements
    movl    $7,-38140(%ebp)         #   dimension 3: 7 elements
    movl    $5,-38136(%ebp)         #   dimension 4: 5 elements
    movl    $10,-38132(%ebp)        #   dimension 5: 10 elements

    # function body
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, 8(%ebp)           
l_f1_2_while_cond:
    leal    -38152(%ebp), %eax      #   2:     &()    t3 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  2 <- t3
    pushl   %eax                   
    leal    -4528(%ebp), %eax       #   4:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t4
    pushl   %eax                   
    movl    $99, %eax               #   6:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   8:     if     100 > t5 goto 3_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $38140, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $94325, %eax            #   0:     if     94325 <= 38234 goto 1_if_true
    movl    $38234, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_4                  #   3:     goto   4
l_f2_4:
    call    dummyBOOLfunc           #   5:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   7:     call   f1
    addl    $4, %esp               
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $64476, %eax            #  11:     sub    t4 <- 64476, 43498
    movl    $43498, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t5 <- t4, 6220
    movl    $6220, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  13:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  14:     if     t5 > t6 goto 9
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  15:     goto   10
l_f2_9:
    movl    $1, %eax                #  17:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_11                 #  18:     goto   11
l_f2_10:
    movl    $0, %eax                #  20:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f2_11:
    movzbl  -29(%ebp), %eax         #  22:     return t7
    jmp     l_f2_exit              
    movl    $44221, %eax            #  23:     add    t8 <- 44221, 63541
    movl    $63541, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     sub    t9 <- t8, 62990
    movl    $62990, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     if     t9 = 81102 goto 14_if_true
    movl    $81102, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  26:     goto   15_if_false
l_f2_14_if_true:
    movl    $1, %eax                #  28:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    movl    $0, %eax                #  29:     if     0 # 1 goto 19_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  30:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  32:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_13                 #  35:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $89551, %eax            #   3:     if     89551 < 96315 goto 4
    movl    $96315, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_4               
    jmp     l_test_5                #   4:     goto   5
l_test_4:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_6                #   7:     goto   6
l_test_5:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_6:
    movzbl  -21(%ebp), %eax         #  11:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  12:     call   f1
    addl    $4, %esp               
l_test_9_while_cond:
    jmp     l_test_8                #  14:     goto   8
    movl    $81778, %eax            #  15:     param  0 <- 81778
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
l_test_13_while_cond:
    movl    $191, %eax              #  18:     if     191 >= 78728 goto 14_while_body
    movl    $78728, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  19:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  21:     goto   13_while_cond
l_test_12:
    movl    $1, %eax                #  23:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_9_while_cond     #  24:     goto   9_while_cond
l_test_8:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
