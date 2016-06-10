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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 72 of <array 68 of <array 9 of <array 82 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #    -29(%ebp)   1  [ $v5       <char> %ebp-29 ]

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
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t7 <- t6, 13395
    movl    $13395, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t8 <- t7, 43701
    movl    $43701, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v4 <- t8
    movl    %eax, 16(%ebp)         
    call    ReadInt                 #   4:     call   t9 <- ReadInt
    movl    %eax, -28(%ebp)        
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
    movl    $1, %eax                #   7:     return 1
    jmp     l_f0_exit              
    movl    $98, %eax               #   8:     assign v5 <- 98
    movb    %al, -29(%ebp)         
    movl    $34238, %eax            #   9:     if     34238 = 42242 goto 11_if_true
    movl    $42242, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  10:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  12:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $98, %eax               #  15:     if     98 > 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  16:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  18:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_1                  #  21:     goto   1
l_f0_1:
l_f0_22_while_cond:
    movl    $68314, %eax            #  24:     if     68314 = 11918 goto 23_while_body
    movl    $11918, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_23_while_body     
    jmp     l_f0_21                 #  25:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  27:     goto   22_while_cond
l_f0_21:
    movl    $62317, %eax            #  29:     assign v4 <- 62317
    movl    %eax, 16(%ebp)         
    jmp     l_f0_18                 #  30:     goto   18
l_f0_18:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 95 of <array 68 of <array 9 of <array 57 of <array 60 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 98 of <array 59 of <array 39 of <array 73 of <array 86 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 64 of <array 31 of <array 53 of <array 61 of <array 56 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 26 of <array 95 of <array 54 of <array 54 of <array 74 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 33 of <array 36 of <array 91 of <array 40 of <array 57 of <char>>>>>>> %ebp+16 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_3_while_cond:
    movl    $71939, %eax            #   3:     add    t7 <- 71939, 20687
    movl    $20687, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t8 <- t7, 29297
    movl    $29297, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t9 <- t8, 75714
    movl    $75714, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     if     t9 >= 48619 goto 4_while_body
    movl    $48619, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #   7:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #   9:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 33 of <array 36 of <array 91 of <array 40 of <array 57 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 26 of <array 95 of <array 54 of <array 54 of <array 74 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_1:
    movl    $99, %eax               #   6:     if     99 # 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    movl    $97, %eax               #   9:     if     97 # 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10_if_true      
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  12:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $99, %eax               #  15:     assign v0 <- 99
    movb    %al, v0                
    movl    $14954, %eax            #  16:     assign v1 <- 14954
    movl    %eax, v1               
    jmp     l_test_5                #  17:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_17_if_false      #  20:     goto   17_if_false
    jmp     l_test_exit            
    call    dummyProcedure          #  22:     call   dummyProcedure
    jmp     l_test_22               #  23:     goto   22
l_test_22:
    jmp     l_test_15               #  25:     goto   15
l_test_17_if_false:
l_test_15:
l_test_26_while_cond:
    movl    $97, %eax               #  29:     if     97 > 98 goto 29_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_29_if_true      
    jmp     l_test_30_if_false      #  30:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_exit            
    jmp     l_test_35_if_false      #  33:     goto   35_if_false
    jmp     l_test_33               #  34:     goto   33
l_test_35_if_false:
l_test_33:
    jmp     l_test_28               #  37:     goto   28
l_test_30_if_false:
l_test_28:
    jmp     l_test_26_while_cond    #  40:     goto   26_while_cond
    leal    v3, %eax                #  41:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  42:     param  2 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  43:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     param  1 <- t2
    pushl   %eax                   
    movl    $56469, %eax            #  45:     mul    t3 <- 56469, 82543
    movl    $82543, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $72163, %eax            #  46:     sub    t4 <- 72163, t3
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  47:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  48:     call   t5 <- f2
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  49:     assign v0 <- t5
    movb    %al, v0                

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 26 of <array 95 of <array 54 of <array 54 of <array 74 of <int>>>>>>
    .long    5
    .long   26
    .long   95
    .long   54
    .long   54
    .long   74
    .skip 2131945920
v3:                                 # <array 33 of <array 36 of <array 91 of <array 40 of <array 57 of <char>>>>>>
    .long    5
    .long   33
    .long   36
    .long   91
    .long   40
    .long   57
    .skip 246486240








    # end of global data section
    #-----------------------------------------

    .end
##################################################
