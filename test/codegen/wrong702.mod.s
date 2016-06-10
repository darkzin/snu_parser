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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 5 of <array 9 of <array 1 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 9 of <array 9 of <array 4 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $99, %eax               #   0:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
l_f0_2_while_cond:
    jmp     l_f0_1                  #   3:     goto   1
    movl    $31849, %eax            #   4:     if     31849 <= 64916 goto 5_if_true
    movl    $64916, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    ReadInt                 #  10:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $45291, %eax            #  11:     return 45291
    jmp     l_f0_exit              
    movl    $22460, %eax            #  12:     return 22460
    jmp     l_f0_exit              
    movl    $44105, %eax            #  13:     assign v4 <- 44105
    movl    %eax, -24(%ebp)        
    jmp     l_f0_2_while_cond       #  14:     goto   2_while_cond
l_f0_1:
    call    dummyBOOLfunc           #  16:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 1 of <array 9 of <array 1 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 4 of <array 7 of <array 9 of <array 1 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    jmp     l_f1_exit              
    movl    $90921, %eax            #   2:     div    t4 <- 90921, 58683
    movl    $58683, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t5 <- t4, 95222
    movl    $95222, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t6 <- t5, 92518
    movl    $92518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     assign v4 <- t6
    movl    %eax, 20(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 9 of <array 9 of <array 4 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 10 of <array 5 of <array 9 of <array 1 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 5 of <array 4 of <array 5 of <array 4 of <char>>>>>>> %ebp+8 ]
    #    -30(%ebp)   1  [ $v2       <bool> %ebp-30 ]
    #   -3204(%ebp)  3174  [ $v3       <array 10 of <array 5 of <array 9 of <array 1 of <array 7 of <bool>>>>>> %ebp-3204 ]
    #   -23640(%ebp)  20436  [ $v4       <array 7 of <array 9 of <array 9 of <array 4 of <array 9 of <bool>>>>>> %ebp-23640 ]
    #   -23644(%ebp)   4  [ $v5       <int> %ebp-23644 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $23632, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5908, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3204(%ebp)          # local array 'v3': 5 dimensions
    movl    $10,-3200(%ebp)         #   dimension 1: 10 elements
    movl    $5,-3196(%ebp)          #   dimension 2: 5 elements
    movl    $9,-3192(%ebp)          #   dimension 3: 9 elements
    movl    $1,-3188(%ebp)          #   dimension 4: 1 elements
    movl    $7,-3184(%ebp)          #   dimension 5: 7 elements
    movl    $5,-23640(%ebp)         # local array 'v4': 5 dimensions
    movl    $7,-23636(%ebp)         #   dimension 1: 7 elements
    movl    $9,-23632(%ebp)         #   dimension 2: 9 elements
    movl    $9,-23628(%ebp)         #   dimension 3: 9 elements
    movl    $4,-23624(%ebp)         #   dimension 4: 4 elements
    movl    $9,-23620(%ebp)         #   dimension 5: 9 elements

    # function body
    movl    $91737, %eax            #   0:     if     91737 >= 32272 goto 1
    movl    $32272, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t4
    movb    %al, -30(%ebp)         
    movl    $1, %eax                #   9:     param  2 <- 1
    pushl   %eax                   
    leal    -23640(%ebp), %eax      #  10:     &()    t5 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  1 <- t5
    pushl   %eax                   
    leal    -3204(%ebp), %eax       #  12:     &()    t6 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  14:     call   t7 <- f0
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
l_f2_7_while_cond:
    jmp     l_f2_6                  #  16:     goto   6
l_f2_10_while_cond:
    movl    $100, %eax              #  18:     if     100 > 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_11_while_body     
    jmp     l_f2_9                  #  19:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  21:     goto   10_while_cond
l_f2_9:
    call    dummyCHARfunc           #  23:     call   t8 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $75583, %eax            #  24:     assign v5 <- 75583
    movl    %eax, -23644(%ebp)     
    jmp     l_f2_7_while_cond       #  25:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $23632, %esp            # remove locals
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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     if     t1 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #  11:     goto   4
l_test_6_while_body:
l_test_8_while_cond:
    movl    $99, %eax               #  14:     if     99 > 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_9_while_body    
    jmp     l_test_7                #  15:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  17:     goto   8_while_cond
l_test_7:
    call    ReadInt                 #  19:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_5_while_cond     #  20:     goto   5_while_cond
l_test_4:
    movl    $97, %eax               #  22:     if     97 <= 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  23:     goto   14_if_false
l_test_13_if_true:
    call    ReadInt                 #  25:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #  26:     if     0 # 0 goto 18_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  27:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  29:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $34866, %eax            #  32:     assign v0 <- 34866
    movl    %eax, v0               
    jmp     l_test_12               #  33:     goto   12
l_test_14_if_false:
l_test_12:
l_test_23_while_cond:
    movl    $97, %eax               #  37:     if     97 # 100 goto 24_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_24_while_body   
    jmp     l_test_22               #  38:     goto   22
l_test_24_while_body:
    jmp     l_test_exit            
    jmp     l_test_23_while_cond    #  41:     goto   23_while_cond
l_test_22:
    jmp     l_test_exit            
    jmp     l_test_exit            

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
