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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $92802, %eax            #   1:     sub    t2 <- 92802, 13908
    movl    $13908, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t3 <- t2, 87986
    movl    $87986, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t3
    movl    %eax, -32(%ebp)        
    call    dummyINTfunc            #   4:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <char> %ebp-19 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 9 of <array 8 of <array 5 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 4 of <array 1 of <array 2 of <array 8 of <char>>>>>>> %ebp+16 ]
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
    movl    $98483, %eax            #   0:     mul    t1 <- 98483, 39035
    movl    $39035, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $83259, %eax            #   1:     if     83259 < t1 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $100, %eax              #   5:     if     100 > 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #  14:     if     99 # t2 goto 9
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_9                 
    jmp     l_f1_10                 #  15:     goto   10
l_f1_9:
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_11                 #  18:     goto   11
l_f1_10:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f1_11:
    movzbl  -18(%ebp), %eax         #  22:     assign v0 <- t3
    movb    %al, 8(%ebp)           
l_f1_14_while_cond:
    call    f0                      #  24:     call   t4 <- f0
    movb    %al, -19(%ebp)         
    movl    $97, %eax               #  25:     if     97 > t4 goto 15_while_body
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_15_while_body     
    jmp     l_f1_13                 #  26:     goto   13
l_f1_15_while_body:
    movl    $97, %eax               #  28:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_14_while_cond      #  30:     goto   14_while_cond
l_f1_13:

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 4 of <array 1 of <array 2 of <array 8 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 9 of <array 8 of <array 5 of <array 8 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 4 of <array 2 of <array 9 of <array 3 of <char>>>>>>> %ebp+8 ]
    #   -11572(%ebp)  11544  [ $v1       <array 4 of <array 9 of <array 8 of <array 5 of <array 8 of <bool>>>>>> %ebp-11572 ]
    #   -12172(%ebp)  600  [ $v2       <array 9 of <array 4 of <array 1 of <array 2 of <array 8 of <char>>>>>> %ebp-12172 ]
    #   -12173(%ebp)   1  [ $v3       <bool> %ebp-12173 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12164, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3041, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11572(%ebp)         # local array 'v1': 5 dimensions
    movl    $4,-11568(%ebp)         #   dimension 1: 4 elements
    movl    $9,-11564(%ebp)         #   dimension 2: 9 elements
    movl    $8,-11560(%ebp)         #   dimension 3: 8 elements
    movl    $5,-11556(%ebp)         #   dimension 4: 5 elements
    movl    $8,-11552(%ebp)         #   dimension 5: 8 elements
    movl    $5,-12172(%ebp)         # local array 'v2': 5 dimensions
    movl    $9,-12168(%ebp)         #   dimension 1: 9 elements
    movl    $4,-12164(%ebp)         #   dimension 2: 4 elements
    movl    $1,-12160(%ebp)         #   dimension 3: 1 elements
    movl    $2,-12156(%ebp)         #   dimension 4: 2 elements
    movl    $8,-12152(%ebp)         #   dimension 5: 8 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
l_f2_4_while_cond:
    movl    $53662, %eax            #   2:     if     53662 >= 28691 goto 5_while_body
    movl    $28691, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5_while_body      
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   5:     goto   4_while_cond
l_f2_3:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $100, %eax              #  10:     param  3 <- 100
    pushl   %eax                   
    leal    -12172(%ebp), %eax      #  11:     &()    t1 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  2 <- t1
    pushl   %eax                   
    leal    -11572(%ebp), %eax      #  13:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  1 <- t2
    pushl   %eax                   
    call    f0                      #  15:     call   t3 <- f0
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  16:     if     t3 < 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_8                 
    jmp     l_f2_9                  #  17:     goto   9
l_f2_8:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_10                 #  20:     goto   10
l_f2_9:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_f2_10:
    movzbl  -22(%ebp), %eax         #  24:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  25:     call   t5 <- f1
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
l_f2_13_while_cond:
    movl    $97, %eax               #  27:     if     97 < 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_14_while_body     
    jmp     l_f2_12                 #  28:     goto   12
l_f2_14_while_body:
    movl    $67398, %eax            #  30:     if     67398 # 49624 goto 17_if_true
    movl    $49624, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  31:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  33:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $0, %eax                #  36:     assign v3 <- 0
    movb    %al, -12173(%ebp)      
    jmp     l_f2_13_while_cond      #  37:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $12164, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_exit            
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   4:     goto   6_while_cond
    movl    $97, %eax               #   5:     if     97 = 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #   6:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #   8:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $99, %eax               #  11:     assign v0 <- 99
    movb    %al, v0                
    movl    $97, %eax               #  12:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_2                #  13:     goto   2
l_test_4_if_false:
l_test_2:
l_test_15_while_cond:
    movl    $98, %eax               #  17:     if     98 >= 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_16_while_body   
    jmp     l_test_14               #  18:     goto   14
l_test_16_while_body:
l_test_19_while_cond:
    movl    $57709, %eax            #  21:     if     57709 # 56766 goto 20_while_body
    movl    $56766, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_20_while_body   
    jmp     l_test_18               #  22:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  24:     goto   19_while_cond
l_test_18:
    movl    $97, %eax               #  26:     if     97 > 100 goto 23_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_23_if_true      
    jmp     l_test_24_if_false      #  27:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  29:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_15_while_cond    #  32:     goto   15_while_cond
l_test_14:
l_test_27_while_cond:
    jmp     l_test_26               #  35:     goto   26
    movl    $99, %eax               #  36:     if     99 >= 97 goto 30_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_30_if_true      
    jmp     l_test_31_if_false      #  37:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  39:     goto   29
l_test_31_if_false:
l_test_29:
    call    WriteLn                 #  42:     call   WriteLn
    movl    $99, %eax               #  43:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_27_while_cond    #  44:     goto   27_while_cond
l_test_26:

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
