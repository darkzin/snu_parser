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
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 4 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 3 of <array 2 of <array 7 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 3 of <array 4 of <array 9 of <array 1 of <int>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v5       <int> %ebp-20 ]

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
    movl    $100, %eax              #   0:     if     100 < 97 goto 1
    movl    $97, %ebx              
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
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  10:     if     100 < t4 goto 6_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_6_if_true:
    movl    $92391, %eax            #  13:     assign v5 <- 92391
    movl    %eax, -20(%ebp)        
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_11                 #  17:     goto   11
    jmp     l_f0_12                 #  18:     goto   12
l_f0_11:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_13                 #  21:     goto   13
l_f0_12:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_13:
    movzbl  -15(%ebp), %eax         #  25:     return t5
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 3 of <array 4 of <array 9 of <array 1 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 2 of <array 3 of <array 2 of <array 7 of <array 9 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 4 of <array 4 of <int>>>>>>> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #   -10424(%ebp)  10392  [ $v2       <array 2 of <array 9 of <array 9 of <array 4 of <array 4 of <int>>>>>> %ebp-10424 ]
    #   -11204(%ebp)  780  [ $v3       <array 2 of <array 3 of <array 2 of <array 7 of <array 9 of <bool>>>>>> %ebp-11204 ]
    #   -13820(%ebp)  2616  [ $v4       <array 6 of <array 3 of <array 4 of <array 9 of <array 1 of <int>>>>>> %ebp-13820 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13808, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3452, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10424(%ebp)         # local array 'v2': 5 dimensions
    movl    $2,-10420(%ebp)         #   dimension 1: 2 elements
    movl    $9,-10416(%ebp)         #   dimension 2: 9 elements
    movl    $9,-10412(%ebp)         #   dimension 3: 9 elements
    movl    $4,-10408(%ebp)         #   dimension 4: 4 elements
    movl    $4,-10404(%ebp)         #   dimension 5: 4 elements
    movl    $5,-11204(%ebp)         # local array 'v3': 5 dimensions
    movl    $2,-11200(%ebp)         #   dimension 1: 2 elements
    movl    $3,-11196(%ebp)         #   dimension 2: 3 elements
    movl    $2,-11192(%ebp)         #   dimension 3: 2 elements
    movl    $7,-11188(%ebp)         #   dimension 4: 7 elements
    movl    $9,-11184(%ebp)         #   dimension 5: 9 elements
    movl    $5,-13820(%ebp)         # local array 'v4': 5 dimensions
    movl    $6,-13816(%ebp)         #   dimension 1: 6 elements
    movl    $3,-13812(%ebp)         #   dimension 2: 3 elements
    movl    $4,-13808(%ebp)         #   dimension 3: 4 elements
    movl    $9,-13804(%ebp)         #   dimension 4: 9 elements
    movl    $1,-13800(%ebp)         #   dimension 5: 1 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     if     t3 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_3:
    movzbl  -15(%ebp), %eax         #   9:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_10                 #  10:     goto   10
    jmp     l_f1_10                 #  11:     goto   10
    jmp     l_f1_11                 #  12:     goto   11
l_f1_10:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_12                 #  15:     goto   12
l_f1_11:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f1_12:
    movzbl  -16(%ebp), %eax         #  19:     if     t5 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #  20:     goto   7
l_f1_6:
    movl    $1, %eax                #  22:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #  23:     goto   8
l_f1_7:
    movl    $0, %eax                #  25:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  27:     return t6
    jmp     l_f1_exit              
    leal    -13820(%ebp), %eax      #  28:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     param  3 <- t7
    pushl   %eax                   
    leal    -11204(%ebp), %eax      #  30:     &()    t8 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     param  2 <- t8
    pushl   %eax                   
    movl    $0, %eax                #  32:     param  1 <- 0
    pushl   %eax                   
    leal    -10424(%ebp), %eax      #  33:     &()    t9 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  35:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         

l_f1_exit:
    # epilogue
    addl    $13808, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 6 of <array 6 of <array 10 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -33(%ebp)   1  [ $v4       <char> %ebp-33 ]

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
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    movl    $100, %eax              #   5:     assign v4 <- 100
    movb    %al, -33(%ebp)         
    movl    $98, %eax               #   6:     assign v4 <- 98
    movb    %al, -33(%ebp)         
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #  10:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     if     t4 < 75124 goto 9_if_true
    movl    $75124, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  12:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_12                 #  14:     goto   12
l_f2_12:
    jmp     l_f2_17_if_false        #  16:     goto   17_if_false
    jmp     l_f2_15                 #  17:     goto   15
l_f2_17_if_false:
l_f2_15:
    call    dummyBOOLfunc           #  20:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  21:     if     98 <= 100 goto 20_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  22:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  24:     goto   19
l_f2_21_if_false:
l_f2_19:
    call    dummyINTfunc            #  27:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #  28:     call   t7 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_f2_8                  #  29:     goto   8
l_f2_10_if_false:
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $97, %eax               #   0:     if     97 > 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $97, %eax               #   9:     if     97 < 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    jmp     l_test_5                #  13:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyCHARfunc           #  16:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  18:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
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

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
