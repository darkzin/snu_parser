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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 5 of <array 7 of <array 4 of <array 1 of <bool>>>>>>> %ebp+12 ]

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
    movl    $98, %eax               #   0:     if     98 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t3
    jmp     l_f0_exit              
    movl    $40593, %eax            #   9:     if     40593 > 39123 goto 6_if_true
    movl    $39123, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  10:     goto   7_if_false
l_f0_6_if_true:
    call    ReadInt                 #  12:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_5                  #  13:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_11_while_cond:
    movl    $98, %eax               #  17:     if     98 > 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  18:     goto   10
l_f0_12_while_body:
    movl    $98, %eax               #  20:     if     98 >= 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  21:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  23:     goto   14
l_f0_16_if_false:
l_f0_14:
    call    dummyBOOLfunc           #  26:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #  27:     return 0
    jmp     l_f0_exit              
    movl    $17795, %eax            #  28:     assign v0 <- 17795
    movl    %eax, 8(%ebp)          
    jmp     l_f0_11_while_cond      #  29:     goto   11_while_cond
l_f0_10:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 8 of <array 6 of <array 7 of <array 6 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    movl    $10445, %eax            #   6:     add    t3 <- 10445, 82438
    movl    $82438, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t4 <- t3, 68182
    movl    $68182, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $64113, %eax            #   8:     if     64113 < t4 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_while_body:
    call    dummyProcedure          #  11:     call   dummyProcedure
    jmp     l_f1_6_while_cond       #  12:     goto   6_while_cond
l_f1_5:
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     if     t5 > 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  16:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  18:     goto   10
l_f1_12_if_false:
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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 8 of <array 6 of <array 7 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 4 of <array 6 of <array 3 of <array 6 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -4096(%ebp)  4056  [ $v4       <array 2 of <array 8 of <array 6 of <array 7 of <array 6 of <char>>>>>> %ebp-4096 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4084, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1021, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4096(%ebp)          # local array 'v4': 5 dimensions
    movl    $2,-4092(%ebp)          #   dimension 1: 2 elements
    movl    $8,-4088(%ebp)          #   dimension 2: 8 elements
    movl    $6,-4084(%ebp)          #   dimension 3: 6 elements
    movl    $7,-4080(%ebp)          #   dimension 4: 7 elements
    movl    $6,-4076(%ebp)          #   dimension 5: 6 elements

    # function body
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     if     100 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   5:     goto   4
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
    call    dummyProcedure          #   8:     call   dummyProcedure
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
l_f2_9_while_cond:
    movl    $31646, %eax            #  12:     param  3 <- 31646
    pushl   %eax                   
    leal    -4096(%ebp), %eax       #  13:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     param  2 <- t3
    pushl   %eax                   
    movl    $97, %eax               #  15:     param  1 <- 97
    pushl   %eax                   
    movl    $24924, %eax            #  16:     param  0 <- 24924
    pushl   %eax                   
    call    f1                      #  17:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  18:     if     t4 < 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_10_while_body     
    jmp     l_f2_8                  #  19:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  21:     goto   9_while_cond
l_f2_8:
l_f2_13_while_cond:
    call    dummyINTfunc            #  24:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     add    t6 <- t5, 11457
    movl    $11457, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t7 <- t6, 56454
    movl    $56454, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t8 <- t7, 42407
    movl    $42407, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     sub    t9 <- t8, 71254
    movl    $71254, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $81056, %eax            #  29:     if     81056 = t9 goto 14_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_14_while_body     
    jmp     l_f2_12                 #  30:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  32:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $4084, %esp             # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   3:     if     99 = t0 goto 3_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   6:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $89100, %eax            #   9:     div    t1 <- 89100, 37901
    movl    $37901, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v0 <- t1
    movl    %eax, v0               
    call    dummyINTfunc            #  11:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
    jmp     l_test_11               #  14:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_exit            
l_test_16_while_cond:
    movl    $86281, %eax            #  19:     if     86281 > 16157 goto 17_while_body
    movl    $16157, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_17_while_body   
    jmp     l_test_15               #  20:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  22:     goto   16_while_cond
l_test_15:
    jmp     l_test_8                #  24:     goto   8
l_test_10_if_false:
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
