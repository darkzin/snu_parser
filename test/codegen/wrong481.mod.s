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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t5
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <bool> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 3 of <array 3 of <array 7 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 6 of <array 8 of <array 10 of <array 6 of <char>>>>>>> %ebp+12 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t5 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $89464, %eax            #   5:     return 89464
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   8:     call   t6 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     div    t7 <- t6, 56903
    movl    $56903, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     if     t7 <= 92099 goto 5
    movl    $92099, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #  11:     goto   6
l_f1_5:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_7                  #  14:     goto   7
l_f1_6:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f1_7:
    movzbl  -29(%ebp), %eax         #  18:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  19:     call   t9 <- f0
    addl    $4, %esp               
    movb    %al, -30(%ebp)         
    movl    $71070, %eax            #  20:     add    t10 <- 71070, 88476
    movl    $88476, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     if     t10 # 41940 goto 10_if_true
    movl    $41940, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  22:     goto   11_if_false
l_f1_10_if_true:
    movl    $98, %eax               #  24:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  25:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_9                  #  26:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 6 of <array 8 of <array 10 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 3 of <array 3 of <array 7 of <array 8 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #   -3576(%ebp)  3552  [ $v0       <array 7 of <array 3 of <array 3 of <array 7 of <array 8 of <bool>>>>>> %ebp-3576 ]
    #   -29520(%ebp)  25944  [ $v1       <array 9 of <array 6 of <array 8 of <array 10 of <array 6 of <char>>>>>> %ebp-29520 ]
    #   -29521(%ebp)   1  [ $v2       <char> %ebp-29521 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $29512, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7378, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3576(%ebp)          # local array 'v0': 5 dimensions
    movl    $7,-3572(%ebp)          #   dimension 1: 7 elements
    movl    $3,-3568(%ebp)          #   dimension 2: 3 elements
    movl    $3,-3564(%ebp)          #   dimension 3: 3 elements
    movl    $7,-3560(%ebp)          #   dimension 4: 7 elements
    movl    $8,-3556(%ebp)          #   dimension 5: 8 elements
    movl    $5,-29520(%ebp)         # local array 'v1': 5 dimensions
    movl    $9,-29516(%ebp)         #   dimension 1: 9 elements
    movl    $6,-29512(%ebp)         #   dimension 2: 6 elements
    movl    $8,-29508(%ebp)         #   dimension 3: 8 elements
    movl    $10,-29504(%ebp)        #   dimension 4: 10 elements
    movl    $6,-29500(%ebp)         #   dimension 5: 6 elements

    # function body
    movl    $32874, %eax            #   0:     param  0 <- 32874
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    leal    -29520(%ebp), %eax      #   2:     &()    t5 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  1 <- t5
    pushl   %eax                   
    leal    -3576(%ebp), %eax       #   4:     &()    t6 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   6:     call   t7 <- f1
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #   7:     assign v2 <- 98
    movb    %al, -29521(%ebp)      

l_f2_exit:
    # epilogue
    addl    $29512, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    movl    $2031, %eax             #   1:     if     2031 < 78996 goto 2_while_body
    movl    $78996, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
l_test_10_while_cond:
    jmp     l_test_9                #   9:     goto   9
    jmp     l_test_10_while_cond    #  10:     goto   10_while_cond
l_test_9:
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
l_test_13_while_cond:
    movl    $97, %eax               #  14:     if     97 = 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  15:     goto   12
l_test_14_while_body:
    movl    $1, %eax                #  17:     if     1 # 0 goto 17_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  18:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_exit            
    jmp     l_test_23_if_false      #  21:     goto   23_if_false
    jmp     l_test_21               #  22:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_26_if_false      #  25:     goto   26_if_false
    jmp     l_test_24               #  26:     goto   24
l_test_26_if_false:
l_test_24:
    call    dummyCHARfunc           #  29:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    f2                      #  30:     call   t1 <- f2
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    leal    _str_1, %eax            #  32:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  34:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_16               #  35:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_13_while_cond    #  38:     goto   13_while_cond
l_test_12:
    movl    $100, %eax              #  40:     if     100 <= 97 goto 32
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_32              
    jmp     l_test_33               #  41:     goto   33
l_test_32:
    movl    $1, %eax                #  43:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_34               #  44:     goto   34
l_test_33:
    movl    $0, %eax                #  46:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_34:
    movzbl  -21(%ebp), %eax         #  48:     assign v0 <- t3
    movb    %al, v0                
    call    dummyINTfunc            #  49:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_test_36               #  50:     goto   36
l_test_36:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
