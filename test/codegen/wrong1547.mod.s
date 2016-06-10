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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 15 of <array 46 of <array 62 of <array 46 of <array 7 of <char>>>>>>> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
l_f0_1_if_true:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_7                  #   6:     goto   7
    jmp     l_f0_6_while_body       #   7:     goto   6_while_body
l_f0_7:
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
    movl    $90741, %eax            #  11:     sub    t6 <- 90741, 63606
    movl    $63606, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t7 <- t6, 16373
    movl    $16373, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     if     t7 > 29664 goto 12_if_true
    movl    $29664, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
l_f0_12_if_true:
    movl    $19130, %eax            #  16:     return 19130
    jmp     l_f0_exit              
    jmp     l_f0_11                 #  17:     goto   11
l_f0_13_if_false:
l_f0_11:

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 38 of <array 99 of <array 55 of <array 12 of <array 50 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 94 of <array 49 of <array 7 of <array 53 of <int>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    movl    $59350, %eax            #   0:     if     59350 >= 43343 goto 1_if_true
    movl    $43343, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    leal    _str_1, %eax            #   3:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    movl    $7962, %eax             #   6:     return 7962
    jmp     l_f1_exit              
    movl    $99, %eax               #   7:     if     99 = 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   8:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $97, %eax               #  13:     assign v2 <- 97
    movb    %al, -21(%ebp)         
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_12_while_cond:
    jmp     l_f1_13_while_body      #  18:     goto   13_while_body
    jmp     l_f1_11                 #  19:     goto   11
l_f1_13_while_body:
    jmp     l_f1_19_if_false        #  21:     goto   19_if_false
    jmp     l_f1_17                 #  22:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_12_while_cond      #  25:     goto   12_while_cond
l_f1_11:
    call    dummyINTfunc            #  27:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t7       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 90 of <array 94 of <array 49 of <array 7 of <array 53 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 38 of <array 99 of <array 55 of <array 12 of <array 50 of <int>>>>>>> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 90 of <array 30 of <array 45 of <array 41 of <array 93 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 43 of <array 73 of <array 43 of <array 45 of <array 65 of <bool>>>>>>> %ebp+20 ]
    #   -496584052(%ebp)  496584024  [ $v4       <array 38 of <array 99 of <array 55 of <array 12 of <array 50 of <int>>>>>> %ebp-496584052 ]
    #   -1111761436(%ebp)  615177384  [ $v5       <array 90 of <array 94 of <array 49 of <array 7 of <array 53 of <int>>>>>> %ebp-1111761436 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1111761424, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $277940356, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-496584052(%ebp)     # local array 'v4': 5 dimensions
    movl    $38,-496584048(%ebp)    #   dimension 1: 38 elements
    movl    $99,-496584044(%ebp)    #   dimension 2: 99 elements
    movl    $55,-496584040(%ebp)    #   dimension 3: 55 elements
    movl    $12,-496584036(%ebp)    #   dimension 4: 12 elements
    movl    $50,-496584032(%ebp)    #   dimension 5: 50 elements
    movl    $5,-1111761436(%ebp)    # local array 'v5': 5 dimensions
    movl    $90,-1111761432(%ebp)   #   dimension 1: 90 elements
    movl    $94,-1111761428(%ebp)   #   dimension 2: 94 elements
    movl    $49,-1111761424(%ebp)   #   dimension 3: 49 elements
    movl    $7,-1111761420(%ebp)    #   dimension 4: 7 elements
    movl    $53,-1111761416(%ebp)   #   dimension 5: 53 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     if     t5 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f2_3:
    movzbl  -18(%ebp), %eax         #   9:     assign v1 <- t6
    movb    %al, 12(%ebp)          
    call    WriteLn                 #  10:     call   WriteLn
l_f2_7_while_cond:
    movl    $97, %eax               #  12:     if     97 > 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_8_while_body      
    jmp     l_f2_6                  #  13:     goto   6
l_f2_8_while_body:
l_f2_11_while_cond:
    movl    $98, %eax               #  16:     if     98 < 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  17:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  19:     goto   11_while_cond
l_f2_10:
    call    dummyBOOLfunc           #  21:     call   t7 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    leal    -1111761436(%ebp), %eax #  22:     &()    t8 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  1 <- t8
    pushl   %eax                   
    leal    -496584052(%ebp), %eax  #  24:     &()    t9 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  26:     call   t10 <- f1
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    jmp     l_f2_7_while_cond       #  27:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $1111761424, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    movl    $64657, %eax            #   1:     mul    t0 <- 64657, 89912
    movl    $89912, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 33363
    movl    $33363, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 = 53605 goto 2_while_body
    movl    $53605, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $97, %eax               #   7:     if     97 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   8:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  10:     goto   5_while_cond
l_test_4:
    movl    $10837, %eax            #  12:     assign v0 <- 10837
    movl    %eax, v0               
    movl    $15370, %eax            #  13:     assign v0 <- 15370
    movl    %eax, v0               
    movl    $46537, %eax            #  14:     assign v0 <- 46537
    movl    %eax, v0               
l_test_12_while_cond:
    movl    $97, %eax               #  16:     if     97 # 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_13_while_body   
    jmp     l_test_11               #  17:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  19:     goto   12_while_cond
l_test_11:
l_test_16_while_cond:
    movl    $97, %eax               #  22:     if     97 # 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_17_while_body   
    jmp     l_test_15               #  23:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  25:     goto   16_while_cond
l_test_15:
    call    dummyCHARfunc           #  27:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_1_while_cond     #  28:     goto   1_while_cond
l_test_0:
l_test_21_while_cond:
    movl    $27936, %eax            #  31:     if     27936 < 84849 goto 22_while_body
    movl    $84849, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_22_while_body   
    jmp     l_test_20               #  32:     goto   20
l_test_22_while_body:
    call    dummyCHARfunc           #  34:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  35:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  36:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_27_if_false      #  37:     goto   27_if_false
    jmp     l_test_25               #  38:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_21_while_cond    #  41:     goto   21_while_cond
l_test_20:
l_test_29_while_cond:
    movl    $97, %eax               #  44:     assign v1 <- 97
    movb    %al, v1                
    movl    $0, %eax                #  45:     assign v2 <- 0
    movb    %al, v2                
    movl    $98, %eax               #  46:     if     98 <= 98 goto 34
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_34              
    jmp     l_test_35               #  47:     goto   35
l_test_34:
    movl    $1, %eax                #  49:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_36               #  50:     goto   36
l_test_35:
    movl    $0, %eax                #  52:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_test_36:
    movzbl  -23(%ebp), %eax         #  54:     assign v2 <- t4
    movb    %al, v2                
    jmp     l_test_exit            
    jmp     l_test_29_while_cond    #  56:     goto   29_while_cond

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
