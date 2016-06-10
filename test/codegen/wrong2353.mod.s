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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 66 of <array 92 of <array 57 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_2_if_true          #   1:     goto   2_if_true
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
    movl    $72179, %eax            #   8:     if     72179 < 48188 goto 9
    movl    $48188, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_9                 
    jmp     l_f0_10                 #   9:     goto   10
l_f0_9:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_11                 #  12:     goto   11
l_f0_10:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f0_11:
    movzbl  -17(%ebp), %eax         #  16:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  17:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_18                 #  20:     goto   18
l_f0_18:
    jmp     l_f0_14                 #  22:     goto   14
    jmp     l_f0_15                 #  23:     goto   15
l_f0_14:
    movl    $1, %eax                #  25:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_16                 #  26:     goto   16
l_f0_15:
    movl    $0, %eax                #  28:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f0_16:
    movzbl  -18(%ebp), %eax         #  30:     return t2
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 68 of <array 54 of <array 38 of <array 38 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 94 of <array 6 of <array 67 of <array 4 of <int>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t0
    jmp     l_f1_exit              
    movl    $30346, %eax            #   7:     div    t1 <- 30346, 62135
    movl    $62135, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $87744, %eax            #   8:     if     87744 > t1 goto 7_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   9:     goto   8_if_false
l_f1_7_if_true:
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  12:     goto   11_while_cond
    movl    $13977, %eax            #  13:     assign v3 <- 13977
    movl    %eax, -28(%ebp)        
    movl    $100, %eax              #  14:     if     100 = 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15                
    jmp     l_f1_16                 #  15:     goto   16
l_f1_15:
    movl    $1, %eax                #  17:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_17                 #  18:     goto   17
l_f1_16:
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_f1_17:
    movzbl  -21(%ebp), %eax         #  22:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  23:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_20_if_true         #  26:     goto   20_if_true
l_f1_20_if_true:
    movl    $98, %eax               #  28:     if     98 >= 100 goto 24_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_24_if_true        
    jmp     l_f1_25_if_false        #  29:     goto   25_if_false
l_f1_24_if_true:
    jmp     l_f1_23                 #  31:     goto   23
l_f1_25_if_false:
l_f1_23:
    jmp     l_f1_19                 #  34:     goto   19
l_f1_19:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <array 94 of <array 6 of <array 67 of <array 4 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 91 of <array 68 of <array 54 of <array 38 of <array 38 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 76 of <array 66 of <array 92 of <array 57 of <array 9 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 97 of <array 76 of <array 80 of <array 87 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 48 of <array 73 of <array 39 of <array 20 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 69 of <array 1 of <array 53 of <array 95 of <bool>>>>>>> %ebp+20 ]
    #   -1930062016(%ebp)  1930061976  [ $v4       <array 91 of <array 68 of <array 54 of <array 38 of <array 38 of <int>>>>>> %ebp-1930062016 ]
    #   -1933085080(%ebp)  3023064  [ $v5       <array 5 of <array 94 of <array 6 of <array 67 of <array 4 of <int>>>>>> %ebp-1933085080 ]
    #   2125147056(%ebp)  236735160  [ $v6       <array 76 of <array 66 of <array 92 of <array 57 of <array 9 of <bool>>>>>> %ebp+2125147056 ]
    #   2125147055(%ebp)   1  [ $v7       <char> %ebp+2125147055 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-2125147064, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $542455058, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1930062016(%ebp)    # local array 'v4': 5 dimensions
    movl    $91,-1930062012(%ebp)   #   dimension 1: 91 elements
    movl    $68,-1930062008(%ebp)   #   dimension 2: 68 elements
    movl    $54,-1930062004(%ebp)   #   dimension 3: 54 elements
    movl    $38,-1930062000(%ebp)   #   dimension 4: 38 elements
    movl    $38,-1930061996(%ebp)   #   dimension 5: 38 elements
    movl    $5,-1933085080(%ebp)    # local array 'v5': 5 dimensions
    movl    $5,-1933085076(%ebp)    #   dimension 1: 5 elements
    movl    $94,-1933085072(%ebp)   #   dimension 2: 94 elements
    movl    $6,-1933085068(%ebp)    #   dimension 3: 6 elements
    movl    $67,-1933085064(%ebp)   #   dimension 4: 67 elements
    movl    $4,-1933085060(%ebp)    #   dimension 5: 4 elements
    movl    $5,2125147056(%ebp)     # local array 'v6': 5 dimensions
    movl    $76,2125147060(%ebp)    #   dimension 1: 76 elements
    movl    $66,2125147064(%ebp)    #   dimension 2: 66 elements
    movl    $92,2125147068(%ebp)    #   dimension 3: 92 elements
    movl    $57,2125147072(%ebp)    #   dimension 4: 57 elements
    movl    $9,2125147076(%ebp)     #   dimension 5: 9 elements

    # function body
    leal    -1933085080(%ebp), %eax #   0:     &()    t0 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t0
    pushl   %eax                   
    leal    -1930062016(%ebp), %eax #   2:     &()    t1 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    movl    $0, %eax                #   4:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #   5:     call   t2 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     return t2
    jmp     l_f2_exit              
    movl    $100, %eax              #   7:     param  3 <- 100
    pushl   %eax                   
    movl    $13104, %eax            #   8:     param  2 <- 13104
    pushl   %eax                   
    leal    2125147056(%ebp), %eax  #   9:     &()    t3 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     param  1 <- t3
    pushl   %eax                   
    movl    $54303, %eax            #  11:     div    t4 <- 54303, 45582
    movl    $45582, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     sub    t5 <- t4, 81379
    movl    $81379, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  14:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    call    dummyCHARfunc           #  15:     call   t7 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  16:     assign v7 <- t7
    movb    %al, 2125147055(%ebp)  

l_f2_exit:
    # epilogue
    addl    $-2125147064, %esp      # remove locals
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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
    jmp     l_test_3_if_true        #   3:     goto   3_if_true
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    movl    $99, %eax               #   6:     if     99 > 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_8_if_true       
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   9:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_2                #  12:     goto   2
l_test_4_if_false:
l_test_2:
    call    WriteLn                 #  15:     call   WriteLn

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
