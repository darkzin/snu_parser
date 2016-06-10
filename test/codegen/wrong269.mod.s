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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 5 of <array 6 of <array 2 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 10 of <array 3 of <array 7 of <array 10 of <bool>>>>>>> %ebp+20 ]

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
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
    movl    $97, %eax               #   2:     return 97
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $72769, %eax            #   4:     if     72769 <= 71567 goto 7
    movl    $71567, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7                 
    jmp     l_f1_2                  #   5:     goto   2
l_f1_7:
    jmp     l_f1_3_while_cond       #   7:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 10 of <array 3 of <array 7 of <array 10 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <array 5 of <array 6 of <array 2 of <array 7 of <char>>>>>>> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #   -2152(%ebp)  2124  [ $v3       <array 5 of <array 5 of <array 6 of <array 2 of <array 7 of <char>>>>>> %ebp-2152 ]
    #   -10576(%ebp)  8424  [ $v4       <array 4 of <array 10 of <array 3 of <array 7 of <array 10 of <bool>>>>>> %ebp-10576 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10564, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2641, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2152(%ebp)          # local array 'v3': 5 dimensions
    movl    $5,-2148(%ebp)          #   dimension 1: 5 elements
    movl    $5,-2144(%ebp)          #   dimension 2: 5 elements
    movl    $6,-2140(%ebp)          #   dimension 3: 6 elements
    movl    $2,-2136(%ebp)          #   dimension 4: 2 elements
    movl    $7,-2132(%ebp)          #   dimension 5: 7 elements
    movl    $5,-10576(%ebp)         # local array 'v4': 5 dimensions
    movl    $4,-10572(%ebp)         #   dimension 1: 4 elements
    movl    $10,-10568(%ebp)        #   dimension 2: 10 elements
    movl    $3,-10564(%ebp)         #   dimension 3: 3 elements
    movl    $7,-10560(%ebp)         #   dimension 4: 7 elements
    movl    $10,-10556(%ebp)        #   dimension 5: 10 elements

    # function body
    call    f1                      #   0:     call   t4 <- f1
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 < t4 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $98, %eax               #   5:     if     98 >= 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
    movl    $9289, %eax             #  10:     assign v2 <- 9289
    movl    %eax, -28(%ebp)        
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    call    dummyCHARfunc           #  15:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  16:     if     t5 < 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  17:     goto   9
l_f2_11_while_body:
    call    WriteLn                 #  19:     call   WriteLn
    jmp     l_f2_10_while_cond      #  20:     goto   10_while_cond
l_f2_9:
    movl    $36425, %eax            #  22:     if     36425 > 25898 goto 15_if_true
    movl    $25898, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  23:     goto   16_if_false
l_f2_15_if_true:
    leal    -10576(%ebp), %eax      #  25:     &()    t6 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  3 <- t6
    pushl   %eax                   
    leal    -2152(%ebp), %eax       #  27:     &()    t7 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  2 <- t7
    pushl   %eax                   
    movl    $1, %eax                #  29:     param  1 <- 1
    pushl   %eax                   
    movl    $88457, %eax            #  30:     param  0 <- 88457
    pushl   %eax                   
    call    f0                      #  31:     call   f0
    addl    $16, %esp              
    movl    $64661, %eax            #  32:     assign v2 <- 64661
    movl    %eax, -28(%ebp)        
l_f2_21_while_cond:
    jmp     l_f2_20                 #  34:     goto   20
    jmp     l_f2_21_while_cond      #  35:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_14                 #  37:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $10564, %esp            # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #   6:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    call    ReadInt                 #   8:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v1 <- t3
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
