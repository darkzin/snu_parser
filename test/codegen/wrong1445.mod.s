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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 54 of <array 18 of <array 84 of <array 54 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    movl    $62645, %eax            #   0:     sub    t1 <- 62645, 55303
    movl    $55303, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v4 <- t1
    movl    %eax, -28(%ebp)        
    movl    $64563, %eax            #   2:     if     64563 < 17877 goto 2_if_true
    movl    $17877, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    movl    $93804, %eax            #   5:     if     93804 < 13596 goto 6_if_true
    movl    $13596, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_10_while_cond:
    movl    $81618, %eax            #  12:     if     81618 = 7557 goto 11_while_body
    movl    $7557, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  13:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  15:     goto   10_while_cond
l_f0_9:
    call    dummyINTfunc            #  17:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1                  #  18:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  21:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  22:     assign v3 <- t3
    movb    %al, 16(%ebp)          

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 37 of <array 82 of <array 40 of <array 81 of <array 78 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_0                  #   3:     goto   0
    call    dummyBOOLfunc           #   4:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   5:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    movl    $0, %eax                #   9:     if     0 # 0 goto 13_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  10:     goto   14_if_false
l_f1_13_if_true:
    movl    $9920, %eax             #  12:     if     9920 < 56441 goto 17_if_true
    movl    $56441, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  13:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  15:     goto   16
l_f1_18_if_false:
l_f1_16:
l_f1_21_while_cond:
    movl    $0, %eax                #  19:     if     0 # 1 goto 22_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_22_while_body     
    jmp     l_f1_20                 #  20:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  22:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_12                 #  24:     goto   12
l_f1_14_if_false:
l_f1_12:
l_f1_28_while_cond:
    call    dummyINTfunc            #  28:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $83199, %eax            #  29:     if     83199 < t4 goto 29_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_29_while_body     
    jmp     l_f1_27                 #  30:     goto   27
l_f1_29_while_body:
    jmp     l_f1_28_while_cond      #  32:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_24                 #  34:     goto   24
l_f1_24:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 37 of <array 82 of <array 40 of <array 81 of <array 78 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 27 of <array 54 of <array 18 of <array 84 of <array 54 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <char> %ebp-37 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 61 of <array 49 of <array 85 of <array 40 of <array 52 of <char>>>>>>> %ebp+12 ]
    #   -476171200(%ebp)  476171160  [ $v3       <array 27 of <array 54 of <array 18 of <array 84 of <array 54 of <int>>>>>> %ebp-476171200 ]
    #   -1242923704(%ebp)  766752504  [ $v4       <array 37 of <array 82 of <array 40 of <array 81 of <array 78 of <char>>>>>> %ebp-1242923704 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1242923692, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $310730923, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-476171200(%ebp)     # local array 'v3': 5 dimensions
    movl    $27,-476171196(%ebp)    #   dimension 1: 27 elements
    movl    $54,-476171192(%ebp)    #   dimension 2: 54 elements
    movl    $18,-476171188(%ebp)    #   dimension 3: 18 elements
    movl    $84,-476171184(%ebp)    #   dimension 4: 84 elements
    movl    $54,-476171180(%ebp)    #   dimension 5: 54 elements
    movl    $5,-1242923704(%ebp)    # local array 'v4': 5 dimensions
    movl    $37,-1242923700(%ebp)   #   dimension 1: 37 elements
    movl    $82,-1242923696(%ebp)   #   dimension 2: 82 elements
    movl    $40,-1242923692(%ebp)   #   dimension 3: 40 elements
    movl    $81,-1242923688(%ebp)   #   dimension 4: 81 elements
    movl    $78,-1242923684(%ebp)   #   dimension 5: 78 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f2_exit              
    movl    $0, %eax                #   2:     param  3 <- 0
    pushl   %eax                   
    movl    $97, %eax               #   3:     param  2 <- 97
    pushl   %eax                   
    leal    -1242923704(%ebp), %eax #   4:     &()    t2 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    movl    $98, %eax               #   6:     param  2 <- 98
    pushl   %eax                   
    movl    $100, %eax              #   7:     param  1 <- 100
    pushl   %eax                   
    leal    -476171200(%ebp), %eax  #   8:     &()    t3 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  10:     call   t4 <- f0
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     div    t5 <- t4, 60995
    movl    $60995, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  13:     call   t6 <- f1
    addl    $16, %esp              
    movl    %eax, -36(%ebp)        
    call    dummyCHARfunc           #  14:     call   t7 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  15:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1242923692, %esp       # remove locals
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $98034, %eax            #   6:     if     98034 < 11314 goto 6_if_true
    movl    $11314, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    call    dummyProcedure          #   9:     call   dummyProcedure
    movl    $97, %eax               #  10:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_5                #  11:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_14_if_true       #  16:     goto   14_if_true
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_exit            
    jmp     l_test_13               #  20:     goto   13
l_test_15_if_false:
l_test_13:

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

    # scope: test
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
