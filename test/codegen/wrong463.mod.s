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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $84689, %eax            #   0:     mul    t3 <- 84689, 68183
    movl    $68183, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
    movl    $15862, %eax            #   2:     assign v2 <- 15862
    movl    %eax, -24(%ebp)        
    movl    $41548, %eax            #   3:     div    t4 <- 41548, 97265
    movl    $97265, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 6 of <array 10 of <array 8 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 > t3 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #   7:     if     98 = 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   8:     goto   6_if_false
l_f1_5_if_true:
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #  11:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_10_while_cond:
    jmp     l_f1_9                  #  15:     goto   9
    jmp     l_f1_9                  #  16:     goto   9
    jmp     l_f1_9                  #  17:     goto   9
l_f1_16_while_cond:
    movl    $75163, %eax            #  19:     if     75163 > 71789 goto 17_while_body
    movl    $71789, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_17_while_body     
    jmp     l_f1_15                 #  20:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  22:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_10_while_cond      #  24:     goto   10_while_cond
l_f1_9:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 7 of <array 8 of <array 2 of <array 9 of <bool>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
l_f2_4_while_cond:
    movl    $0, %eax                #   2:     if     0 = 1 goto 5_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5_while_body      
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   5:     goto   4_while_cond
l_f2_3:
    jmp     l_f2_7                  #   7:     goto   7
l_f2_7:
    movl    $15081, %eax            #   9:     if     15081 >= 48001 goto 11_if_true
    movl    $48001, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  10:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  12:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_15_while_cond:
    movl    $100, %eax              #  16:     if     100 >= 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_16_while_body     
    jmp     l_f2_14                 #  17:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  19:     goto   15_while_cond
l_f2_14:
    movl    $35393, %eax            #  21:     if     35393 >= 85434 goto 19
    movl    $85434, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_19                
    jmp     l_f2_20                 #  22:     goto   20
l_f2_19:
    movl    $1, %eax                #  24:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_21                 #  25:     goto   21
l_f2_20:
    movl    $0, %eax                #  27:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_f2_21:
    movzbl  -25(%ebp), %eax         #  29:     return t3
    jmp     l_f2_exit              
    movl    $98, %eax               #  30:     if     98 >= 99 goto 24
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_24                
    jmp     l_f2_25                 #  31:     goto   25
l_f2_24:
    movl    $1, %eax                #  33:     assign t4 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_26                 #  34:     goto   26
l_f2_25:
    movl    $0, %eax                #  36:     assign t4 <- 0
    movb    %al, -26(%ebp)         
l_f2_26:
    movzbl  -26(%ebp), %eax         #  38:     return t4
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  39:     call   t5 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    jmp     l_f2_1_while_cond       #  40:     goto   1_while_cond
    movl    $62384, %eax            #  41:     div    t6 <- 62384, 87378
    movl    $87378, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  42:     mul    t7 <- t6, 35217
    movl    $35217, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  43:     add    t8 <- t7, 75200
    movl    $75200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  44:     add    t9 <- t8, 73230
    movl    $73230, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  45:     add    t10 <- t9, 99555
    movl    $99555, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  46:     if     t10 <= 92578 goto 30
    movl    $92578, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_30                
    jmp     l_f2_31                 #  47:     goto   31
l_f2_30:
    movl    $1, %eax                #  49:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_32                 #  50:     goto   32
l_f2_31:
    movl    $0, %eax                #  52:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_32:
    movzbl  -17(%ebp), %eax         #  54:     return t11
    jmp     l_f2_exit              
    movl    $98, %eax               #  55:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  56:     call   t12 <- f0
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_6                #   2:     goto   6
    jmp     l_test_6                #   3:     goto   6
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #   9:     if     t0 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #  10:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    movl    $84045, %eax            #  13:     if     84045 = 26570 goto 12_if_true
    movl    $26570, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  16:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $0, %eax                #  19:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_2_while_cond     #  20:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    call    WriteLn                 #  23:     call   WriteLn
l_test_19_while_cond:
    movl    $100, %eax              #  25:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  26:     call   t1 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     div    t2 <- t1, 8354
    movl    $8354, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $64857, %eax            #  28:     if     64857 < t2 goto 20_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_20_while_body   
    jmp     l_test_18               #  29:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  31:     goto   19_while_cond
l_test_18:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
