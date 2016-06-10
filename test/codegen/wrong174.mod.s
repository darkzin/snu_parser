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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 9 of <array 2 of <array 8 of <array 4 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $41080, %eax            #   3:     if     41080 = 86361 goto 8
    movl    $86361, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_8                 
    jmp     l_f0_9                  #   4:     goto   9
l_f0_8:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_10                 #   7:     goto   10
l_f0_9:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_10:
    movzbl  -14(%ebp), %eax         #  11:     assign v2 <- t5
    movb    %al, -15(%ebp)         
    jmp     l_f0_3                  #  12:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_1_while_cond       #  15:     goto   1_while_cond
    movl    $76945, %eax            #  16:     assign v3 <- 76945
    movl    %eax, -20(%ebp)        
    call    WriteLn                 #  17:     call   WriteLn

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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <char> %ebp-37 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    movl    $58908, %eax            #   0:     mul    t4 <- 58908, 45770
    movl    $45770, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     mul    t5 <- t4, 364
    movl    $364, %ebx             
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     div    t6 <- t5, 36825
    movl    $36825, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t7 <- t6, 36417
    movl    $36417, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t8 <- t7, 37324
    movl    $37324, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     return t8
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   6:     call   t9 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    call    dummyBOOLfunc           #   7:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 9 of <array 2 of <array 8 of <array 4 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #   -16172(%ebp)  16152  [ $v1       <array 7 of <array 9 of <array 2 of <array 8 of <array 4 of <int>>>>>> %ebp-16172 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16160, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4040, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-16172(%ebp)         # local array 'v1': 5 dimensions
    movl    $7,-16168(%ebp)         #   dimension 1: 7 elements
    movl    $9,-16164(%ebp)         #   dimension 2: 9 elements
    movl    $2,-16160(%ebp)         #   dimension 3: 2 elements
    movl    $8,-16156(%ebp)         #   dimension 4: 8 elements
    movl    $4,-16152(%ebp)         #   dimension 5: 4 elements

    # function body
    leal    -16172(%ebp), %eax      #   0:     &()    t4 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   2:     call   t5 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #   3:     if     99 < 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   4:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   7:     goto   5
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_1                  #  10:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_10_if_false        #  13:     goto   10_if_false
    movl    $97, %eax               #  14:     if     97 > 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  15:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  17:     goto   11
l_f2_13_if_false:
l_f2_11:
    jmp     l_f2_8                  #  20:     goto   8
l_f2_10_if_false:
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $16160, %esp            # remove locals
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
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_2                #   1:     goto   2
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #  10:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #  12:     if     100 > 98 goto 9
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_9               
    jmp     l_test_10               #  13:     goto   10
l_test_9:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  16:     goto   11
l_test_10:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  20:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_15_if_false      #  21:     goto   15_if_false
    movl    $97, %eax               #  22:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_exit            
    movl    $1, %eax                #  24:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  25:     call   t2 <- f1
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $54237, %eax            #  26:     param  0 <- 54237
    pushl   %eax                   
    call    WriteInt                #  27:     call   WriteInt
    addl    $4, %esp               
    movl    $78294, %eax            #  28:     assign v2 <- 78294
    movl    %eax, v2               
    jmp     l_test_13               #  29:     goto   13
l_test_15_if_false:
l_test_13:
    call    dummyCHARfunc           #  32:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  33:     if     t3 < 98 goto 22_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_22_if_true      
    jmp     l_test_23_if_false      #  34:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  36:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_27_if_false      #  39:     goto   27_if_false
    movl    $100, %eax              #  40:     assign v1 <- 100
    movb    %al, v1                
    movl    $14578, %eax            #  41:     if     14578 >= 60519 goto 30_if_true
    movl    $60519, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_30_if_true      
    jmp     l_test_31_if_false      #  42:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  44:     goto   29
l_test_31_if_false:
l_test_29:
    jmp     l_test_25               #  47:     goto   25
l_test_27_if_false:
l_test_25:

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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
