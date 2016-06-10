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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 8 of <array 6 of <array 6 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 2 of <array 1 of <array 8 of <array 9 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 1 of <array 5 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_3                  #   2:     goto   3
    jmp     l_f0_4                  #   3:     goto   4
l_f0_3:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_5                  #   6:     goto   5
l_f0_4:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f0_5:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t5
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 1 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 2 of <array 1 of <array 8 of <array 9 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 8 of <array 6 of <array 6 of <array 9 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 5 of <array 4 of <array 3 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 4 of <array 3 of <array 7 of <array 5 of <int>>>>>>> %ebp+20 ]
    #   -18204(%ebp)  18168  [ $v4       <array 7 of <array 8 of <array 6 of <array 6 of <array 9 of <bool>>>>>> %ebp-18204 ]
    #   -18948(%ebp)  744  [ $v5       <array 5 of <array 2 of <array 1 of <array 8 of <array 9 of <char>>>>>> %ebp-18948 ]
    #   -19212(%ebp)  264  [ $v6       <array 4 of <array 6 of <array 2 of <array 1 of <array 5 of <bool>>>>>> %ebp-19212 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19200, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4800, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-18204(%ebp)         # local array 'v4': 5 dimensions
    movl    $7,-18200(%ebp)         #   dimension 1: 7 elements
    movl    $8,-18196(%ebp)         #   dimension 2: 8 elements
    movl    $6,-18192(%ebp)         #   dimension 3: 6 elements
    movl    $6,-18188(%ebp)         #   dimension 4: 6 elements
    movl    $9,-18184(%ebp)         #   dimension 5: 9 elements
    movl    $5,-18948(%ebp)         # local array 'v5': 5 dimensions
    movl    $5,-18944(%ebp)         #   dimension 1: 5 elements
    movl    $2,-18940(%ebp)         #   dimension 2: 2 elements
    movl    $1,-18936(%ebp)         #   dimension 3: 1 elements
    movl    $8,-18932(%ebp)         #   dimension 4: 8 elements
    movl    $9,-18928(%ebp)         #   dimension 5: 9 elements
    movl    $5,-19212(%ebp)         # local array 'v6': 5 dimensions
    movl    $4,-19208(%ebp)         #   dimension 1: 4 elements
    movl    $6,-19204(%ebp)         #   dimension 2: 6 elements
    movl    $2,-19200(%ebp)         #   dimension 3: 2 elements
    movl    $1,-19196(%ebp)         #   dimension 4: 1 elements
    movl    $5,-19192(%ebp)         #   dimension 5: 5 elements

    # function body
    movl    $72454, %eax            #   0:     if     72454 # 16361 goto 1_if_true
    movl    $16361, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    leal    -19212(%ebp), %eax      #   3:     &()    t3 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  3 <- t3
    pushl   %eax                   
    leal    -18948(%ebp), %eax      #   5:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  2 <- t4
    pushl   %eax                   
    leal    -18204(%ebp), %eax      #   7:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  1 <- t5
    pushl   %eax                   
    movl    $99, %eax               #   9:     if     99 > 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
    jmp     l_f1_6                  #  10:     goto   6
l_f1_5:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_7                  #  13:     goto   7
l_f1_6:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f1_7:
    movzbl  -25(%ebp), %eax         #  17:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  18:     call   f0
    addl    $16, %esp              
    movl    $43122, %eax            #  19:     param  0 <- 43122
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               
    movl    $0, %eax                #  21:     if     0 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  22:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  24:     goto   10
l_f1_12_if_false:
l_f1_10:
l_f1_15_while_cond:
    movl    $13467, %eax            #  28:     if     13467 >= 95109 goto 16_while_body
    movl    $95109, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_16_while_body     
    jmp     l_f1_14                 #  29:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  31:     goto   15_while_cond
l_f1_14:
    movl    $18624, %eax            #  33:     if     18624 > 82188 goto 19_if_true
    movl    $82188, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  34:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_18                 #  36:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_0                  #  39:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #  42:     call   t7 <- ReadInt
    movl    %eax, -32(%ebp)        
    call    dummyBOOLfunc           #  43:     call   t8 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         

l_f1_exit:
    # epilogue
    addl    $19200, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 2 of <array 7 of <array 4 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 4 of <array 4 of <array 5 of <int>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $92975, %eax            #   1:     assign v2 <- 92975
    movl    %eax, -20(%ebp)        
l_f2_3_while_cond:
    jmp     l_f2_2                  #   3:     goto   2
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   5:     goto   6_while_cond
l_f2_9_while_cond:
    movl    $40376, %eax            #   7:     if     40376 >= 31123 goto 10_while_body
    movl    $31123, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10_while_body     
    jmp     l_f2_8                  #   8:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  10:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_3_while_cond       #  12:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
